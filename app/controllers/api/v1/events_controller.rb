class Api::V1::EventsController < Api::V1::BaseController
# :events

  #def initialize(user, events)
  #   @user = user
  #   @events = events
  # end

  def index
    #@events = policy_scope(Event)
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])
    @ticket.update(params.permit(:status))
    render :show
  end

end
