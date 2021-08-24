class Chef < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :speciality, presence: true
  has_many_attached :photos

  def full_name
    "#{user.first_name.capitalize} #{user.last_name.capitalize}"
  end
end
