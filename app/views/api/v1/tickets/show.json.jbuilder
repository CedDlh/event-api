# json.extract! @event, :id, :name, :date, :time
# json.tickets @event.tickets do |ticket|
  #json.array! @tickets do |ticket|
  json.extract! @ticket, :id, :status, :event_id
#end


