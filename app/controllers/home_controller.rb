class HomeController < ApplicationController
  def index
    # sorted data
    @events_sql_order = Event.order(:start_at).includes(:organizer)
    @events_ruby_order = Event.all.sort_by { |x| x.start_at }

    # data from range
    start_at = (Date.current - 1.day).beginning_of_day
    end_at = start_at.end_of_day
    # yesterday based on the current users time, but created_at is stored in UTC
    # this commented out code would return different results depending on time of day and users time_zone
    # @events_from_yesterday = Event.where("created_at BETWEEN ? AND ?", start_at, end_at)
    user_time_zone = Time.zone.now.strftime("%Z")
    # postgres specific use ('timezone' or 'AT TIME ZONE') - http://www.postgresql.org/docs/9.3/static/functions-datetime.html#FUNCTIONS-DATETIME-ZONECONVERT
    @events_from_yesterday = Event.where("timezone(?, created_at) BETWEEN ? AND ?", user_time_zone, start_at, end_at)
  end
end
