require 'test_helper'

class WorkSchedulesControllerTest < ActionController::TestCase
  setup do
    sign_in User.first
    @work_schedule = work_schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_schedule" do
    assert_difference('WorkSchedule.count') do
      post :create, work_schedule: { end_at: @work_schedule.end_at, start_at: @work_schedule.start_at, time_zone: @work_schedule.time_zone, worker_id: @work_schedule.worker_id }
    end

    assert_redirected_to work_schedule_path(assigns(:work_schedule))
  end

  test "should show work_schedule" do
    get :show, id: @work_schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_schedule
    assert_response :success
  end

  test "should update work_schedule" do
    patch :update, id: @work_schedule, work_schedule: { end_at: @work_schedule.end_at, start_at: @work_schedule.start_at, time_zone: @work_schedule.time_zone, worker_id: @work_schedule.worker_id }
    assert_redirected_to work_schedule_path(assigns(:work_schedule))
  end

  test "should destroy work_schedule" do
    assert_difference('WorkSchedule.count', -1) do
      delete :destroy, id: @work_schedule
    end

    assert_redirected_to work_schedules_path
  end
end
