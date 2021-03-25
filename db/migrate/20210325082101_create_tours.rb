class CreateTours < ActiveRecord::Migration[6.1]
  def change
    create_table :tours do |t|
      t.string :name
      t.string :city
      t.string :country
      t.text :desciption
      t.integer :price
      t.string :images
      t.string :category

      t.timestamps
    end
  end
end
