class PostSerializer < ActiveModel::Serializer
    attributes :id, :username, :created_at

    has_many :comments
    has_many :likes
    # has_many :posts
end



