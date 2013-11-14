class HomeController < ApplicationController
  def index
    @work_schedule_sql_order = []
    @work_schedule_ruby_order = []
    @events_sql_order = []
    @events_ruby_order = []
    @events_scheduled_today = []
    @events_from_yesterday = []

    load_ordered_work_schedules
    load_ordered_events
    load_events_created_yesterday
    load_events_scheduled_today_on_the_east_coast
  end

  private

  def load_ordered_work_schedules
    # work schedules: sorted data
    @work_schedule_sql_order = WorkSchedule.order(:start_at).includes(:worker)
    @work_schedule_ruby_order = WorkSchedule.all.sort_by { |x| x.start_at }
  end

  def load_ordered_events
    # events: sorted data
    @events_sql_order = Event.order(:start_at).limit(4).includes(:organizer)
    @events_ruby_order = Event.includes(:organizer).sort_by { |x| x.start_at }.first(4)
  end

  def load_events_created_yesterday
    start_at = (Date.current - 1.day).beginning_of_day
    end_at = start_at.end_of_day

    # rails will convert times to filter to created yesterday
    @events_from_yesterday = Event.where("created_at BETWEEN ? AND ?", start_at, end_at).order(:created_at)
    # Offset correctly for user who is "(GMT-06:00) Mexico City"
    # SELECT "events".* FROM "events" WHERE (created_at BETWEEN '2013-11-08 06:00:00.000000' AND '2013-11-09 05:59:59.999999') ORDER BY "events"."created_at" ASC
    # basically the same
    # @events_from_yesterday = Event.where("created_at >= ?", start_at).where("created_at <= ?", end_at).order(:created_at)

    # don't do this
    # @events_from_yesterday = Event.where("DATE(created_at) = ?", Date.current - 1.day).order(:created_at)
    # not offset, different results at different times of the day
    # SELECT "events".* FROM "events" WHERE (DATE(created_at) = '2013-11-09') ORDER BY "events"."created_at" ASC
  end

  def load_events_scheduled_today_on_the_east_coast
    @corp_office = OpenStruct.new({ time_zone: "Eastern Time (US & Canada)" })

    Time.use_zone(@corp_office.time_zone) do
      start_at = Date.current.beginning_of_day
      end_at = start_at.end_of_day
      @events_scheduled_today = Event.where("start_at BETWEEN ? AND ?", start_at, end_at).order(:start_at)
    end
  end
end
