class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :rental
  has_one :review
end
