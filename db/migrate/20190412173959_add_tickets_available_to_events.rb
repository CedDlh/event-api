class AddTicketsAvailableToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :tickets_available, :integer
  end
end
