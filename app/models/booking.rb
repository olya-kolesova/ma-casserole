class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :chef

  validates :start_hour, presence: true
  validates :end_hour, presence: true
  validate :date_cannot_be_in_the_past
  validate :end_time_cannot_be_less_then_start

  private

  def end_date_after_start_date?
    if end_hour < start_hour
      errors.add :end_time, "must be after start time"
    end
  end

  def date_cannot_be_in_the_past
    if date.present? && date < Date.today
      errors.add(:date, "can't be in the past")
    end
  end

  def end_time_cannot_be_less_then_start
    if end_hour <= start_hour
      errors.add(:end_hour, "can't be earlier than start date")
    end
  end
end
