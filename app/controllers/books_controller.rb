class BooksController < ApplicationController
  before_action :set_book, only: [:show, :upvote, :downvote]
  before_action :authenticate_user! , except: [:index]

  
  def index
    @books = Book.all.order(:cached_votes_score=> :desc)
  end

  
  def show
  end



  def upvote
    @book.upvote_from current_user
    redirect_to books_path
  end

  def downvote
     @book.downvote_from current_user
    redirect_to books_path
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :image, :author, :description, :year, :cost, :is_here)
    end
end
