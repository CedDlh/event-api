json.extract! @event, :id, :name, :date, :time
json.tickets @event.tickets do |ticket|
  json.extract! ticket, :status
end
