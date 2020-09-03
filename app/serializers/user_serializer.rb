class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :username, :pic, :sightings
end
