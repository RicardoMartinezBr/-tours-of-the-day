class Tour < ApplicationRecord
  belongs_to :user
  has_many :photos

  CATEGORIES = ['City Tour', 'Boat Tour', 'Private Tours', 'Bike Tour', 'Museum Guide', 'Night Tour', 'Keukenhof', 'Walking Tour']
  validates :category, presence: true, inclusion: { in: CATEGORIES }

  # validates :name, presence
  # validates :city, presence
  # validates :country, presence
  # validates :name, presence
  # validates :description, presence
  # validates :price, presence
  # validates :category, presence
end
