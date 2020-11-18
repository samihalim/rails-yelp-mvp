class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true, length: { minimum: 5 }
  validates :rating, presence: true
  validates :rating, numericality: true, inclusion: { in: 0..5 }
end
