class Review < ApplicationRecord
  belongs_to :user
  belongs_to :rental
  belongs_to :reservation
  validates :rating, :inclusion => 1..5 
end
