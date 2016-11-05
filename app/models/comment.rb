class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true

  validates :author, :body, presence: true
  validates :body, length: { minimum: 5 }
end
