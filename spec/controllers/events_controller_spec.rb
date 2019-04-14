require 'rails_helper'

RSpec.describe Api::V1::EventsController , :type => :controller do
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end
end



RSpec.describe "GET show", :type => :request do
  let!(:events) {FactoryBot.create_list(:random_event, 5)}
before {get '/api/v1/events/2'}

it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end




    # it "response with JSON body containing expected Event attributes" do
    #   hash_body = {}
    #   expect { hash_body = JSON.parse(response.body).with_indifferent_access }
    #   expect(hash_body.keys).to match_array([:id, :name, :date, :time, :tickets_available, :price])
    #   expect(hash_body).to match({
    #     id: event.id,
    #     title: 'Hello World'
    #   })
    # end

  #   let(:event) { Event.create(name: 'Event name') }

  #   it "returns http success" do
  #     expect(response.status).to eq(200)
  #   end


