class PostSerializer < ActiveModel::Serializer
    attributes :id, :title, :media_link, :media_type, :description, :team1, :team2, :updated_at, :likes_count, :user_id, :username

    has_many :comments
end



