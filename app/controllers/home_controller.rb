class HomeController < ApplicationController

	before_action :authenticate_user! , except: [:index]


  def index

  	@products = Product.all
  
  	@order = Order.where(is_cart: true).count

  end

  def show
  	
  end


end
