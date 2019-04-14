require 'rails_helper'

# RSpec.describe Api::V1::EventsController do
#   describe "GET #index" do
#     before do
#       get :index, id:events
#     end
#     it "returns http success" do
#       expect(response).to have_http_status(:success)
#     end
#     it "JSON body response contains expected events attributes" do
#       json_response = nil
#       expect {json_response = JSON.parse(response.body).with_indifferent_access}.not_to raise_exception
#       #expect(hash_body.keys).to match_array([:id, :title])
#       expect(json_response.keys).to match_array([:id, :name, :date, :time,:tickets_available, :price])
#       expect(json_response).to match({
#         id: event.id,
#         name: 'Event Name'
#       })
#     end
#   end


RSpec.describe Api::V1::EventsController , :type => :controller do
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end
end


RSpec.describe Api::V1::EventsController , :type => :controller do
  describe "GET show" do
    it "has a 200 status code" do
      get :show, params: { id: 2}
      expect(response.status).to eq(200)
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
  end
end

