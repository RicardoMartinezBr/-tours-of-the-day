class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tour, null: false, foreign_key: true
      t.integer :total_price
      t.datetime :date
      t.integer :amount_of_people

      t.timestamps
    end
  end
end
