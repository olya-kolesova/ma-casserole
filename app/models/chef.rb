class Chef < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :speciality, presence: true
  has_many_attached :photos
end
