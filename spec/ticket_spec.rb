require 'rails_helper'


RSpec.describe Ticket, :type => :model do
  #let(:event) { Event.create(name: "Event Name", date: "Event date", time: "Event time",
                         # tickets_available: 50, price: 3000)
#}
subject {
  described_class.new(event_id: 1, amount: 500 )
    }

  describe "Associations" do
  it { should belong_to(:event) }
  end


  describe "Validations" do
    it { should validate_presence_of(:amount) }
    it { should validate_presence_of(:event_id) }
  end
end

