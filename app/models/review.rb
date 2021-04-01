class Review < ApplicationRecord
  belongs_to :reservation

  # Validations
  validates :reservation, uniqueness: true
end
