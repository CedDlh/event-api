class Api::V1::TicketsController < Api::V1::BaseController

  def create
  @event = Event.find(params[:event_id])
  @ticket = Ticket.new(params.require(:ticket).permit(:event_id, :amount))
    if @event.tickets_available == 0 || @event.tickets_available == nil
     raise "No tickets available"
    elsif @event.price != params[:amount]
     raise "Amount doesn't match"
    else
     @ticket.save
     @event.tickets_available -= 1
     @event.save
    end
  end

 def show
    @ticket = Ticket.find(params[:id])
  end





  #(implement validation optional)
  # check on events table if column tickets available > 0
  #check if amount of request is the same of event
  #if everything went well Ticket.save
  #Decrease value tickets_avail on tickets table





  # def update
  #   if @ticket.update(ticket_params)
  #     render :show
  #   else
  #     render_error
  #   end
  # end


  # private


  # def event_params
  #     params.require(:ticket).permit(:status)
  #   end

  # def render_error
  #     render json: { errors: @event.errors.full_messages },
  #       status: :unprocessable_entity
  #   end

end
