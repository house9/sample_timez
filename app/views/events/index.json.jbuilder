json.array!(@events) do |event|
  json.extract! event, :event_name, :start_at, :end_at, :description, :organizer_id
  json.url event_url(event, format: :json)
end
