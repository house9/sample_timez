class HomeController < ApplicationController
  def index
    @work_schedule_sql_order = []
    @work_schedule_ruby_order = []
    @events_sql_order = []
    @events_ruby_order = []
    @events_scheduled_today = []
    @events_from_yesterday = []

    # load_ordered_work_schedules
    # load_ordered_events
    load_events_created_yesterday
    # load_events_scheduled_today
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
    # # events: data from range
    start_at = (Date.current - 1.day).beginning_of_day
    end_at = start_at.end_of_day

    # formatted_offset

    # # yesterday based on the current users time, but created_at is stored in UTC
    # # this commented out code would return different results depending on time of day and users time_zone
    # # @events_from_yesterday = Event.where("created_at BETWEEN ? AND ?", start_at, end_at)
    user_time_zone = Time.zone.now.strftime("%Z")
    # # # postgres specific use ('timezone' or 'AT TIME ZONE') - http://www.postgresql.org/docs/9.3/static/functions-datetime.html#FUNCTIONS-DATETIME-ZONECONVERT

    # @events_from_yesterday = Event.order(:created_at)
    #   .where("timezone(?, created_at) BETWEEN ? AND ?", user_time_zone, force_database_time(start_at), force_database_time(end_at))
    # #

    @events_from_yesterday = Event.order(:created_at)
      .where("created_at BETWEEN ? AND ?", start_at, end_at)
    # # SELECT "events".* FROM "events" WHERE (created_at BETWEEN '2013-11-08 00:00:00 -0800' AND '2013-11-08 23:59:59 -0800') ORDER BY "events"."created_at" ASC;

    # @events_from_yesterday = Event.order(:created_at)
    #   .where("timezone(?, created_at) BETWEEN ? AND ?", user_time_zone, start_at.to_s, end_at.to_s)
    # SELECT "events".* FROM "events" WHERE (timezone('PST', created_at) BETWEEN '2013-11-08 00:00:00 -0800' AND '2013-11-08 23:59:59 -0800') ORDER BY "events"."created_at" ASC

    # @events_from_yesterday = Event.order(:created_at)
    #   .where("timezone(?, created_at) BETWEEN ? AND ?", user_time_zone, start_at, end_at)
    # SELECT "events".* FROM "events" WHERE (timezone('PST', created_at) BETWEEN '2013-11-09 00:00:00.000000' AND '2013-11-09 23:59:59.999999') ORDER BY "events"."created_at" ASC

    # @events_from_yesterday = Event.order(:created_at)
    #   .where("created_at BETWEEN ? AND ?", start_at, end_at)
    # # SELECT "events".* FROM "events" WHERE (created_at BETWEEN '2013-11-08 08:00:00.000000' AND '2013-11-09 07:59:59.999999') ORDER BY "events"."created_at" ASC
  end

  def load_events_scheduled_today
    @events_scheduled_today = [] # TODO
  end

  def force_database_time(value)
    # convert to a string so active record doesn't offset the value
    # strip off the offset
    logger.debug value.to_s
    logger.debug value.to_s(:db)
    logger.debug value.getutc.to_s(:db)

    result = value.to_s.gsub(value.formatted_offset(false), "").strip
    logger.debug result
    result
  end
end
