class Voyage < ApplicationRecord
  belongs_to :captain, class_name: 'User', foreign_key: 'captain_id'
  has_many :reservations

  validates :title, presence: true
  validates :location, presence: true
  validates :start_time, presence: true
end
