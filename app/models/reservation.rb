class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :tour
  has_one :review, dependent: :destroy

  # Validations
  validates :date, presence: true
end
