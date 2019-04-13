json.array! @events do |event|
  json.extract! event, :id, :name, :date, :time,:tickets_available, :tickets
end

json.array! @tickets do |ticket|
  json.extract! ticket, :id, :status, :event_id, :status
end
