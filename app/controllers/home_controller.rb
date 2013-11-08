class HomeController < ApplicationController
  def index
    # events: sorted data
    @events_sql_order = Event.order(:start_at).limit(4).includes(:organizer)
    @events_ruby_order = Event.includes(:organizer).sort_by { |x| x.start_at }.first(4)

    # events: data from range
    start_at = (Date.current - 1.day).beginning_of_day
    end_at = start_at.end_of_day
    # yesterday based on the current users time, but created_at is stored in UTC
    # this commented out code would return different results depending on time of day and users time_zone
    # @events_from_yesterday = Event.where("created_at BETWEEN ? AND ?", start_at, end_at)
    user_time_zone = Time.zone.now.strftime("%Z")
    # postgres specific use ('timezone' or 'AT TIME ZONE') - http://www.postgresql.org/docs/9.3/static/functions-datetime.html#FUNCTIONS-DATETIME-ZONECONVERT
    @events_from_yesterday = Event.where("timezone(?, created_at) BETWEEN ? AND ?", user_time_zone, start_at, end_at)

    start_at = (Date.current - 7.days).beginning_of_day
    end_at = (start_at + 6.days).end_of_day
    @events_from_last_week = Event.where("timezone(?, created_at) BETWEEN ? AND ?", user_time_zone, start_at, end_at)

    @event_count_upcoming = Event.where("start_at > ?", Time.zone.now).count
    @event_count_upcoming_real = Event.where("timezone(?, start_at) > ?", user_time_zone, Time.zone.now).count
    @event_count_total = Event.count

    # logger.debug " ---------------------------"
    # logger.debug Event.where("DATE(created_at) = ?", Date.current.yesterday).count
    # logger.debug Event.where("timezone(?, created_at) BETWEEN ? AND ?", user_time_zone, start_at, end_at).count
    # logger.debug " ---------------------------"

    # work schedules: sorted data
    @work_schedule_sql_order = WorkSchedule.order(:start_at).includes(:worker)
    @work_schedule_ruby_order = WorkSchedule.all.sort_by { |x| x.start_at }
  end
end
