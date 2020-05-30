class Admin::ShopsController < ApplicationController
  before_action :authenticate_admin!
  def new
  	@shop = Shop.new
  end

  def create
  	shop = Shop.new(shop_params)
    shop.admin_id = current_admin.id
    # binding.pry
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

  def destroy
    shop = Shop.find(params[:id])
    shop.destroy
    redirect_to admin_shops_path
  end

  private
  def shop_params
  	params.require(:shop).permit(:name, :image, :explanatory, :shop_url, :phone_number, :address, :admin_id)
  end
end
