class CommentsController < ApplicationController
  
	 before_action :authenticate_user!, except: [:show]

  def new

  end

  def show
  	@product = Product.find_by_id(params[:id])
  	@comments = Comment.where(:product_id => @product.id)
  	
  end

  def create
  	@product = Product.find(params[:product_id])
  	 pp @product
  	@comment = @product.comments.create(comment_params)

  	redirect_back(fallback_location: :back)
  end

  def destroy
    @comment = Comment.find_by_id(params[:id])
      
        @comment.destroy
      
      redirect_back(fallback_location: :back)
  end

  private
  def comment_params
    	params.require(:comment).permit(:product_id, :user_id, :body)
  end

end
