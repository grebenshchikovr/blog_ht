class HomeController < ApplicationController
  def index
    @post = Post.last
    @image = Image.last
    @link = Link.last
  end
end
