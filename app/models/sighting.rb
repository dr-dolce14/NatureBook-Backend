class Sighting < ApplicationRecord
  belongs_to :user
  belongs_to :organism
  has_many :comments
  has_many :users, through: :comments
end
