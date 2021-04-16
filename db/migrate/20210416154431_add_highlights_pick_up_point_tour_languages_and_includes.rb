class AddHighlightsPickUpPointTourLanguagesAndIncludes < ActiveRecord::Migration[6.1]
  def change
    add_column :tours, :longitude, :float
    add_column :tours, :latitude, :float
    add_column :tours, :languages, :text
    add_column :tours, :highlights, :text
    add_column :tours, :address, :string
    add_column :tours, :includes, :text
  end
end
