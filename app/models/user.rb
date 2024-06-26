class User < ApplicationRecord
  has_many :rentals
  has_many :reviews
  has_many :reservations

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
