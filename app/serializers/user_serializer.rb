class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :updated_at

    has_many :comments
    has_many :likes
    # has_many :posts
end



