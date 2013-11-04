class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :set_event_time_zone, only: [:create, :update]

  def index
    @events = Event.order(:start_at, :end_at)
  end

  def show
    # render
  end

  def new
    @event = Event.new
  end

  def edit
    # render
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @event.update(event_params)
      redirect_to @event, notice: 'Event was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @event.destroy
    redirect_to events_url
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def set_event_time_zone
    if params[:event]
      Time.zone = params[:event][:time_zone]
    end
  end

  def event_params
    params.require(:event)
      .permit(:event_name, :start_at, :end_at, :description, :time_zone)
      .merge(organizer_id: current_user.id) # don't do this in real (production) code
  end
end
