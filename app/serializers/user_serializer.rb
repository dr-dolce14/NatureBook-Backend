class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :username, :pic
end
