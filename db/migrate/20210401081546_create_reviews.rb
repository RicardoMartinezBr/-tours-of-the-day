class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :review_description
      t.integer :tour_rating
      t.string :user_rating
      t.references :reservation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
