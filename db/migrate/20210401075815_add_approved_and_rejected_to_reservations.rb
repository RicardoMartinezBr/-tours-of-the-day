class AddApprovedAndRejectedToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :approved, :boolean, :default => false
    add_column :reservations, :declined, :boolean, :default => false
  end
end
