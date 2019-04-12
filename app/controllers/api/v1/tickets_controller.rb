class Api::V1::TicketsController < Api::V1::BaseController

  def update
    if @ticket.update(ticket_params)
      render :show
    else
      render_error
    end
  end


  private


  def event_params
      params.require(:ticket).permit(:status)
    end

  def render_error
      render json: { errors: @event.errors.full_messages },
        status: :unprocessable_entity
    end

end
