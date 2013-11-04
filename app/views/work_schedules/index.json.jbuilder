json.array!(@work_schedules) do |work_schedule|
  json.extract! work_schedule, :worker_id, :start_at, :end_at, :time_zone
  json.url work_schedule_url(work_schedule, format: :json)
end
