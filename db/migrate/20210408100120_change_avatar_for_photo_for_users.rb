class ChangeAvatarForPhotoForUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :avatar
    add_column :users, :photo
  end
end
