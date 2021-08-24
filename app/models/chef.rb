class Chef < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validate :speciality, presence: true
  has_many_attached :photos
end
