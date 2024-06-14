class Rental < ApplicationRecord
  has_many :rental_images
  belongs_to :user
end
