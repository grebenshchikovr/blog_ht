class CommentsController < ApplicationController
  
 def index
  @commentable = find_commentable
  @comments = @commentable.comments
end

def create
  @commentable = find_commentable
  @comment = @commentable.comments.new(comment_params)
  if @comment.save
    #flash[:notice] = "Successfully created comment."
    #redirect_to :id => nil
    redirect_to @commentable
  else
    flash[:notice] = @comment.errors.full_messages.inspect
    #redirect_to :id => nil
    redirect_to @commentable
  end
end

private

  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end

  def comment_params
    params.require(:comment).permit(:author, :content)
  end

end
