class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user, :sighting, :content
end
