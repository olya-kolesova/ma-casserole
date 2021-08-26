class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :chef

  validates :start_date, :end_date, presence: true# availability: true
  validate :end_date_after_start_date?

  private
  
  def end_date_after_start_date?
    if end_date < start_date
      errors.add :end_date, "must be after start date"
    end
  end
end
