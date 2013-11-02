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

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event }
      else
        format.html { render action: 'new' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
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
