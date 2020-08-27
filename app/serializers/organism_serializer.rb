class OrganismSerializer < ActiveModel::Serializer
  attributes :id, :category, :common_name, :scientific_name, :image
end
