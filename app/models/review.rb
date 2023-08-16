class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  RATING = (0..5)
  validates :rating, inclusion: RATING, numericality: { only_integer: true }
end
