class User < ApplicationRecord

    has_many :likes, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :posts, dependent: :destroy

    validates :email, :password,  presence: true
    validates :email, uniqueness: { case_sensitive: false }

   
end
