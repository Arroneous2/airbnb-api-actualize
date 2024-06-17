class Rental < ApplicationRecord
  has_many :rental_images
  has_many :reviews
  has_many :reservations
  belongs_to :user
end
