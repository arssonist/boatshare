class Voyage < ApplicationRecord
  belongs_to :captain, class_name: 'User', foreign_key: 'captain_id'
  has_many :reservations
  has_many :passengers, through: :reservations

  validates :title, presence: true
  validates :location, presence: true
  validates :start_time, presence: true

  geocoded_by :location
  after_validation :geocode
end
