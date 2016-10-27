class Image < ActiveRecord::Base
  has_many :comments, as: :commentable

  validates :link, :description, presence: true
  #validates :link, :format => URI::regexp(%w(.*jpg bmp))
end
