json.array!(@events) do |event|
  json.extract! event, :id, :num_date, :description, :title, :location_status, :history
  json.url event_url(event, format: :json)
end
