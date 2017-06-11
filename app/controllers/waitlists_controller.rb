class WaitlistsController < ApplicationController
  def new
  	@books = Book.find_by_id(params[:id])
  	@waitlist = Waitlist.new(:book_id => @books.id,:user_id => current_user.id,:is_complete => false, :book_available => false)
  	@waitlist.save
  	redirect_back(fallback_location: :back)
  end

  def index
  
  	@waitlists = Waitlist.where(user_id: current_user.id) 
    
  end

  def delete
  	@waitlist = Waitlist.find_by_id(params[:id])
    @waitlist.destroy
    redirect_back(fallback_location: :back)
  end
end
