class ProductsController < ApplicationController
  def index
  	@products = Product.all
 	if params[:shop_id]
 	  @products = @products.where(shop_id: params[:shop_id])
 	end
  end

  def show
  	@product = Product.find(params[:id])
  	@order = Order.new
  end
end
