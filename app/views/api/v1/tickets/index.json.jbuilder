json.array! @tickets do |event|
  json.extract! event, :id, :status, :event_id, :status
end
