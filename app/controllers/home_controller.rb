class HomeController < ApplicationController
  
   before_action :authenticate_user!


  def index
  	
  	if user_signed_in?
  		redirect_to books_path
  	end
  	
  end

 def create
  	@user = User.find_by_id(params[:id])
  	 
  	@feedback = @user.feedbacks.create(feedback_params)

  	redirect_back(fallback_location: :back)
  end

  def feedback
  	@user = User.where(:id => current_user.id)
  	
  end

  private
  def feedback_params
    	params.require(:feedback).permit( :user_id, :message, :subject)
  end


end
