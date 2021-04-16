class ChangeLocationForCountryForTours < ActiveRecord::Migration[6.1]
  def change
    remove_column :tours, :location, :string
    add_column :tours, :country, :string
  end
end
