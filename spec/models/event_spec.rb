# require 'spec_helper'
require 'rails_helper'

RSpec.describe Event, :type => :model do
    subject {
      described_class.new(name: "Event Name", date: "Event date", time: "Event time",
                          tickets_available: 50, price: 3000 )
    }

    describe "Associations" do
      it { should have_many(:tickets) }
    end

    describe "Validations" do
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:date) }
      it { should validate_presence_of(:time) }
      it { should validate_presence_of(:tickets_available) }
      it { should validate_presence_of(:price) }
    end
  end
