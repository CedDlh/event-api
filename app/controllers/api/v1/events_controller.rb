class Api::V1::EventsController < Api::V1::BaseController

  def index
    #@events = policy_scope(Event)
    @events = Event.all
    render json: @events.as_json, status: 200
  end


  def show
     render json: @event.as_json, status: 200
  end

end
