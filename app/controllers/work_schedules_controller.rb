class WorkSchedulesController < ApplicationController
  before_action :set_work_schedule, only: [:show, :edit, :update, :destroy]
  before_action :set_work_schedule_time_zone, only: [:create, :update]

  def index
    @work_schedules = WorkSchedule.all
  end

  def show
  end

  def new
    @work_schedule = WorkSchedule.new
  end

  def edit
  end

  def create
    @work_schedule = WorkSchedule.new(work_schedule_params)

    if @work_schedule.save
      redirect_to @work_schedule, notice: 'Work schedule was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @work_schedule.update(work_schedule_params)
      redirect_to @work_schedule, notice: 'Work schedule was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @work_schedule.destroy
    redirect_to work_schedules_url
  end

  private

  def set_work_schedule
    @work_schedule = WorkSchedule.find(params[:id])
  end

  def set_work_schedule_time_zone
    if params[:work_schedule]
      Time.zone = params[:work_schedule][:time_zone]
    end
  end

  def work_schedule_params
    params.require(:work_schedule).permit(:worker_id, :start_at, :end_at, :time_zone)
  end
end
