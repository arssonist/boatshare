class Voyage < ApplicationRecord
  belongs_to :captain, class_name: 'User', foreign_key: 'captain_id'
  has_many :reservations
  has_many :passengers, through: :reservations

  geocoded_by :location
  after_validation :geocode

  has_attached_file :voyage_image_file, default_url: ("/app/assets/images/Comic_image_missing.png")
  validates_attachment_content_type :voyage_image_file, content_type: /\Aimage\/.*\z/

  has_attached_file :boat_image_file, default_url: "/images/Comic_image_missing.png"
  validates_attachment_content_type :boat_image_file, content_type: /\Aimage\/.*\z/


  validates :title, presence: true

  validates :location, presence: true

  validates :start_time, presence: true

  validate :start_time_cannot_be_in_the_past

   validate :has_capacity?#validates capcity: if there is no space on boat then rollback reservation and display custom error.
  validates :capacity, presence: true

    def start_time_cannot_be_in_the_past #validation to make sure captains cannot create voyages in the past
     if start_time.present? && start_time < DateTime.now
       errors.add(:start_time, message: "You can't make a voyage in the past! Please try again.")
     end
   end

    validates :capacity, presence: true
    #
    # validates :capacity, numericality: true, { :greater_than => 0, :less_than_or_equal_to => 20 } #validates capacity to be an integer greater than or equal to 0

    validates_inclusion_of :capacity, in: 0..20

   def present_capacity
     self.capacity - self.reservations.count
   end

   def has_capacity?
     if present_capacity <= 0
       errors.add(:capacity, message: "Sorry, this trip is full. Choose another trip!")
     else
       return true
     end
   end

end
