class Sighting < ApplicationRecord
  belongs_to :user
  belongs_to :organism
  has_many :comments, :dependent => :destroy
  has_many :users, through: :comments
end
