class OrdersController < ApplicationController
 before_action :authenticate_user! 

  def new
  	@book = Book.find_by_id(params[:id])
  	@order = Order.new(:book_id => @book.id,:user_id => current_user.id, :cost => @book.cost, :is_cart => true)
  	@order.save
  	redirect_back(fallback_location: :back)
  end

  def index
  	@orders = Order.where(user_id: current_user.id).where(is_cart: true)
  
  end

  def pay
    @order = Order.find_by_id(params[:id])
    @order.update(:is_cart => false)
    redirect_back(fallback_location: :back)
  end

  def delete
    @order = Order.find_by_id(params[:id])
    @order.destroy
    redirect_back(fallback_location: :back)
  end
end
