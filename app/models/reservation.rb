class Reservation < ApplicationRecord
  belongs_to :movie
  validates :start_date, :end_date, presence: true

  # validate :expiration_date_validation

  # def expiration_date_validation
  #   if end_date < start_date
  #     errors.add(:end_date, "can't be before the start date")
  #   end
  # end
end
