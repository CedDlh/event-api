require 'rails_helper'

RSpec.describe Api::V1::TicketsController , :type => :controller do
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end
end


RSpec.describe Api::V1::TicketsController , :type => :controller do
  describe "GET show" do
    it "has a 200 status code" do
      get :show, params: { id: 1}
      expect(response.status).to eq(200)
    end
  end
end
