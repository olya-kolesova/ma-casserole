class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :chef

  validate :start_date, :end_date, presence: true  # , availability: true
  validate :end_date_after_start_date
end
