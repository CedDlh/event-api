class Event < ApplicationRecord
   has_many :tickets



   def tickets_avail
   total_avail = @ticket.status[avail]
   end


end
