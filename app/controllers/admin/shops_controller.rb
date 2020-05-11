class Admin::ShopsController < ApplicationController
  def new
  	@shop = Shop.new
  end

  def create
  	shop = Shop.new(shop_params)
  	shop.save
  	redirect_to admin_shops_path
  end

  def index
  	@shops = Shop.all
  end

  def show
  	@shop = Shop.find(params[:id])
  end

  def edit
  	@shop = Shop.find(params[:id])
  end

  def update
  	shop = Shop.find(params[:id])
  	shop.update(shop_params)
  	redirect_to admin_shops_path(shop)
  end

  private
  def shop_params
  	params.require(:shop).permit(:name, :image, :explanatory, :shop_url, :phone_number, :address)
  end
end
