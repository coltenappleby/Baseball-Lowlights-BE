class CommentSerializer < ActiveModel::Serializer
  attributes :username, :id, :content, :media_link, :updated_at
end