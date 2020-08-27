require 'bcrypt'

class User < ApplicationRecord
    has_many :sightings
    has_many :organisms, through: :sightings
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
