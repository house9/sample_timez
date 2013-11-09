class HomeController < ApplicationController
  def index
    load_ordered_work_schedules
    load_ordered_events

    @events_from_yesterday = [] # TODO
    @events_scheduled_today = [] # TODO
  end

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
end
