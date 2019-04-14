require 'rails_helper'

RSpec.describe Api::V1::TicketsController , :type => :controller do
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end
end


RSpec.describe "GET show", :type => :request do
  let!(:events) {FactoryBot.create_list(:event, 1)}
  let!(:tickets) {FactoryBot.create_list(:random_ticket, 5)}
before {get '/api/v1/tickets/1'}

it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end


RSpec.describe "POST New Ticket", :type => :request do
  let!(:ticket) {FactoryBot.create_list(:random_ticket, 1)}
  let!(:event) {FactoryBot.create(:event)}
  before do  post '/api/v1/tickets', params: {ticket: {:event_id => 1,
                                              :amount => 2000, :status => nil}}
  end

  it 'returns the right event_id attached to the ticket' do
    expect(JSON.parse(response.body)['event_id']).to eq(1)
  end
  it 'returns the right amount for the ticket' do
    expect(JSON.parse(response.body)['amount']).to eq('amount')
  end
  it 'returns the right status for the ticket' do
    expect(JSON.parse(response.body)['status']).to eq(nil)
  end
end

