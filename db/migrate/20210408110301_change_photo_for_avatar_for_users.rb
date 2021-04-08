class ChangePhotoForAvatarForUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :photo, :string
    add_column :users, :avatar, :string
  end
end
