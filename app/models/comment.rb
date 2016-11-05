class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true

  validates :author, :content, presence: true
  validates :content, length: { minimum: 5 }
end
