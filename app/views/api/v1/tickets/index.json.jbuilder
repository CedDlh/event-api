json.array! @tickets do |ticket|
  json.extract! tickety, :id, :status, :event_id, :status
end
