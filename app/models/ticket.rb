class Ticket < ApplicationRecord
  belongs_to :event

  validates_presence_of :event_id, :amount

  def as_json
      {
        id: id,
        event_id: event_id,
        amount: amount,
        status: status
        }
  end
end
