class PostSerializer < ActiveModel::Serializer
    attributes :id, :title, :media_link, :media_type, :description, :team1, :team2, :created_at

    belongs_to :user
    has_many :comments
    has_many :likes
end



