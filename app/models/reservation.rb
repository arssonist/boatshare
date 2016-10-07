class Reservation < ApplicationRecord
    belongs_to :passenger, class_name: 'User', foreign_key: 'passenger_id'
    belongs_to :voyage

    validates :voyage_id, presence: true

    validates  :passenger_id, presence: true
    validate :passenger_not_captain?
  #
  def passenger_not_captain? #custom validation method to make sure the passenger is not the captain
     if  voyage.captain == passenger
      errors.add(:passenger_id, message: "You can't book a place on your own trip! Please try again.")
    end
  end


  end
