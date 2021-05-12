class CommentSerializer < ActiveModel::Serializer
  attributes :username, :user_id, :id, :content, :media_link, :updated_at
end