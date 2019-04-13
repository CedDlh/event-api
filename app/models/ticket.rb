class Ticket < ApplicationRecord
  belongs_to :event

  validates_presence_of :event_id, :amount
end
