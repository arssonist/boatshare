class Reservation < ApplicationRecord
  belongs_to :passenger, class_name: 'User', foreign_key: 'passenger_id'
  belongs_to :voyages
end
