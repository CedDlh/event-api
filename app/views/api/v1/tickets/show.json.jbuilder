# json.extract! @event, :id, :name, :date, :time
# json.tickets @event.tickets do |ticket|
  json.array! @tickets do |event|
  json.extract! ticket, :status
end


