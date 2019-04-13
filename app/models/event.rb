class Event < ApplicationRecord
   has_many :tickets

   validates_presence_of :name, :date, :time, :tickets_available, :price

end
