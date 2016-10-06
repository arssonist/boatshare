class User < ApplicationRecord
  authenticates_with_sorcery!

  # perhaps this shoudl be voyage_id as a foreign_key?
    has_many :voyages, foreign_key: :captain_id
    # validates_presence_of :name
    has_many :reservations, foreign_key: :passenger_id


    #
    validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
    validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
    validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
    #
    # validates :email, uniqueness: true
    validates :email, length: {minimum: 5}
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

    validates :name, presence: true
    validates :name, length: { minimum: 2}


end
