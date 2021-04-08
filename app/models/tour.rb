class Tour < ApplicationRecord
  belongs_to :user
  has_many_attached :photos, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :reviews, through: :reservations, dependent: :destroy

  # Validations
  # validates :user, uniqueness: true
  validates :photos, length: { minimum: 1 }
  # validates :name, presence
  # validates :city, presence
  # validates :country, presence
  # validates :description, presence
  # validates :price, presence
  CATEGORIES = ['City Tour', 'Boat Tour', 'Private Tours', 'Bike Tour', 'Museum Guide', 'Night Tour', 'Keukenhof', 'Walking Tour']
  # validates :category, presence: true, inclusion: { in: CATEGORIES }

  def average_rating
    if reviews.length == 0
      return 0
    else
      sum = 0
      reviews.each do |review|
        sum += review.tour_rating
      end
      (sum.to_f / reviews.length).round(2)
    end
  end

  def favorited?(current_user)
    Favorite.find_by(user_id: current_user.id, tour_id: id)
  end
end
