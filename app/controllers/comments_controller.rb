class CommentsController < ApplicationController

 before_action :authenticate_user!, except: [:show]

	def new
	end

  def show
  	@book = Book.find_by_id(params[:id])
  	@comments = Comment.where(:book_id => @book.id)
  end

  def create
  	@book = Book.find(params[:book_id])
  	 
  	@comment = @book.comments.create(comment_params)

  	redirect_back(fallback_location: :back)
  end

  def destroy
  	@comment = Comment.find_by_id(params[:id])
      
        @comment.destroy
      
      redirect_back(fallback_location: :back)
  end

private
  def comment_params
    	params.require(:comment).permit(:book_id, :user_id, :body)
  end

end
