class ChangeImagesForPhotosInTours < ActiveRecord::Migration[6.1]
  def change
    remove_column :tours, :images, :string
    add_column :tours, :photos, :string
  end
end
