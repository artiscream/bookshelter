class ProductsController < ApplicationController
 
  def show
  	@product = Product.find_by_id(params[:id])
  	
  end

end
