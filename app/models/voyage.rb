class Voyage < ApplicationRecord
  belongs_to :captain, class_name: 'User', foreign_key: 'captain_id'
  has_many :reservations
  has_many :passengers, through: :reservations

  geocoded_by :location
  after_validation :geocode

  validates :title, presence: true
  validates :location, presence: true
  validates :start_time, presence: true

  validate :start_time_cannot_be_in_the_past

  def start_time_cannot_be_in_the_past
    if start_time.present? && start_time < Date.today
      errors.add(:start_time, message: "You can't make a voyage in the past! Please try again.")
    end
  end

end
