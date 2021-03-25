class AddUserReferenceToTours < ActiveRecord::Migration[6.1]
  def change
    add_reference :tours, :user, foreign_key: true
  end
end
