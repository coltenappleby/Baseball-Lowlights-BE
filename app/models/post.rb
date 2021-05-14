class Post < ApplicationRecord
  belongs_to :user

  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy


  validates :title, :description, :team1, :media_type, presence: true

  def likes_count
    self.likes.count
  end

  def user_id
    self.user.id
  end

  def username
    self.user.username
  end

end
