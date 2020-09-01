class SightingSerializer < ActiveModel::Serializer
  attributes :id, :user, :organism, :location, :lat, :lng, :habitat, :weather, :date, :comments
end
