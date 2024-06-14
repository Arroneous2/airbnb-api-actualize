class Review < ApplicationRecord
  belongs_to :user
  belongs_to :rental
  validates :rating, :inclusion => 1..5 
end
