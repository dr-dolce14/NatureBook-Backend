class SightingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :organism_id, :location, :lat, :lng, :habitat, :weather, :date
end
