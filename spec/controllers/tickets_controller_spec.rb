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
  let!(:events) {FactoryBot.create_list(:random_event, 5)}
  let!(:tickets) {FactoryBot.create_list(:random_ticket, 5)}
before {get '/api/v1/tickets/1'}

it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end


