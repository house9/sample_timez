class WorkSchedulesController < ApplicationController
  before_action :set_work_schedule, only: [:show, :edit, :update, :destroy]
  before_action :set_work_schedule_time_zone, only: [:create, :update]

  # GET /work_schedules
  # GET /work_schedules.json
  def index
    @work_schedules = WorkSchedule.all
  end

  # GET /work_schedules/1
  # GET /work_schedules/1.json
  def show
  end

  # GET /work_schedules/new
  def new
    @work_schedule = WorkSchedule.new
  end

  # GET /work_schedules/1/edit
  def edit
  end

  # POST /work_schedules
  # POST /work_schedules.json
  def create
    @work_schedule = WorkSchedule.new(work_schedule_params)

    respond_to do |format|
      if @work_schedule.save
        format.html { redirect_to @work_schedule, notice: 'Work schedule was successfully created.' }
        format.json { render action: 'show', status: :created, location: @work_schedule }
      else
        format.html { render action: 'new' }
        format.json { render json: @work_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_schedules/1
  # PATCH/PUT /work_schedules/1.json
  def update
    respond_to do |format|
      if @work_schedule.update(work_schedule_params)
        format.html { redirect_to @work_schedule, notice: 'Work schedule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @work_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_schedules/1
  # DELETE /work_schedules/1.json
  def destroy
    @work_schedule.destroy
    respond_to do |format|
      format.html { redirect_to work_schedules_url }
      format.json { head :no_content }
    end
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
