class Api::V1::TicketsController < Api::V1::BaseController

  def index
    @tickets = Ticket.all
    render json: @tickets.as_json, status: 200
  end


  def show
    @ticket = Ticket.find(params[:id])
    render json: @ticket.as_json, status: 200
  end


  def create
    @event = Event.find(params[:event_id])
    @ticket = Ticket.new(ticket_params)
    ticket_avail = @event.tickets_available
    if ticket_avail == 0 || ticket_avail == nil # check on events table if column tickets available > 0 or not nil
      raise "No tickets available"
    elsif @event.price != params[:amount] #check if price of ticket is the same than event
      raise "Amount doesn't match"
    else
      @ticket.save
      @event.tickets_available -= 1 #Decrease value of tickets_avail on event table
      @event.save
    end
  end


private

  def ticket_params
    params.require(:ticket).permit(:event_id, :amount, :status)
  end

end
