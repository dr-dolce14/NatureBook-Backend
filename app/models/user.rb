require 'bcrypt'

class User < ApplicationRecord
    has_many :sightings
    has_many :organisms, through: :sightings
    has_many :comments
    # has_many :sightings, through: :comments
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
