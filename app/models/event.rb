class Event < ApplicationRecord
   has_many :tickets

   validates_presence_of :name, :date, :time, :tickets_available, :price


   def as_json
    {
      id: id,
      name: name,
      date: date,
      time: time,
      tickets_available: tickets_available,
      price: price
    }
  end
end
