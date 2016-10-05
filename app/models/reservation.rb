class Reservation < ApplicationRecord
  belongs_to :passenger, class_name: 'User', foreign_key: 'passenger_id'
  belongs_to :voyage

  validates :voyage_id, presence: true

  validates  :passenger_id, presence: true
  # validate :passenger_not_captain?
  #   def passenger_not_captain? #custom validation method to make sure the passenger is not the captain
  #    if  self.voyage.captain_id == passenger_id
  #     errors.add(:passenger_id, message: "You can't book a place on your own trip! Please try again.")
  #    end
  # end

    # validate :capacity_full? #validates capcity: if there is no space on boat then rollback reservation and display custom error.
      # def capacity_full
      #   self.voyage.capacity - self.voyage.reservations.count
      # end


      #   <= 0
      #    errors.add(:capacity, message: "Sorry, this trip is full. Choose another trip!")
      #   end
      # end

end
#
#
# irb(main):003:0> passenger_id = 3
# => 3
# irb(main):004:0> res.voyage_id = 5
# => 5
# irb(main):005:0> res.passenger_id = 3
# => 3
# irb(main):006:0> res.save!
#
# v = Voyage.last
# r = v.reservations
# c = r.count
