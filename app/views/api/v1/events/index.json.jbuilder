json.array! @events do |event|
  json.extract! event, :id, :name, :date, :time
end
