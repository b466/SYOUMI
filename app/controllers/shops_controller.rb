class ShopsController < ApplicationController
    before_action :authenticate_member!

  def new
  	 @shop = Shop.new
  end

  def create
  	shop = Shop.new(shop_params)
    shop.member_id = current_member.id
    # binding.pry
  	shop.save
  	redirect_to shops_path
  end

  def index
  	# @shops = Shop.all
    @q = Shop.ransack(params[:q])
    @shops = @q.result(distinct: true)
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
  	redirect_to shops_path(shop)
  end

  def destroy
    shop = Shop.find(params[:id])
    shop.destroy
    redirect_to shops_path
  end

  private
  def shop_params
  	params.require(:shop).permit(:name, :image, :explanatory, :shop_url, :phone_number, :address, :genre_id)
  end
end
