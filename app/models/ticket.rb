class Ticket < ApplicationRecord
  belongs_to :event
# attr reader :status

  # def initialize(attributes = {})
  # @status = attributes.status
  # end

  #  def tickets_avail
  #   total_avail = 0
  #   @status.select { |a| a.state.name == "avail" }

  #  end
end
