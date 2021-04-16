class User < ApplicationRecord
  has_many :tours, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_one_attached :avatar, dependent: :destroy
  # has_many :chatrooms, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable
end
