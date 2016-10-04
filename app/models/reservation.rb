class Reservation < ApplicationRecord
  belongs_to :passenger, class_name: 'User', foreign_key: 'passenger_id'
  belongs_to :voyage

  validates :passenger_id, presence: true
  validates :voyage_id, presence: true

  
end
