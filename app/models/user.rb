class User < ApplicationRecord
# perhaps this shoudl be voyage_id as a foreign_key?
  has_many :voyages, foreign_key: :captain_id
  # validates_presence_of :name
  has_many :reservations, foreign_key: :passenger_id
end
