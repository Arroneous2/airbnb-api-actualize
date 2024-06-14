class Rental < ApplicationRecord
  has_many :rental_images
  has_many :reviews
  belongs_to :user
end
