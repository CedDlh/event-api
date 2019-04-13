# require 'spec_helper'
require 'rails_helper'

RSpec.describe Event, :type => :model do
    subject {
      described_class.new(name: "Event Name", date: "Event date", time: "Event time",
                          tickets_available: 50, price: 3000 )
    }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is valid not without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a date" do
    subject.date = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a time" do
    subject.time = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a tickets_available" do
    subject.tickets_available = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a price" do
    subject.price = nil
    expect(subject).to_not be_valid
  end
end
