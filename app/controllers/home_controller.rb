class HomeController < ApplicationController
  def index
    @events_sql_order = Event.order(:start_at).includes(:organizer)
    @events_ruby_order = Event.all.sort_by { |x| x.start_at }
  end
end
