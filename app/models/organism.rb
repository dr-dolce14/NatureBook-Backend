class Organism < ApplicationRecord
    has_many :sightings
    has_many :users, through: :sightings
end
