class FixDescriptionTypoInTours < ActiveRecord::Migration[6.1]
  def change
    remove_column :tours, :desciption, :text
    add_column :tours, :description, :text
  end
end
