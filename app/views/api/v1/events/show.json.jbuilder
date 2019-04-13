json.extract! @event, :id, :name, :date, :time,
:price, :tickets_available
# json.tickets @event.tickets do |ticket|
#   json.extract! ticket, :status
# end
