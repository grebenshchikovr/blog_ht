class Post < ActiveRecord::Base
  has_many :comments, as: :commentable

  validates :title, :body, presence: true
  validates :body, length: { minimum: 5 }
end
