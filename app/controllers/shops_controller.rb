class ShopsController < ApplicationController
  before_action :authenticate_member!, except: [:index]

  def new
    @shop = Shop.new
  end

  def create
  	shop = Shop.new(shop_params)
    shop.member_id = current_member.id
    if shop.save
      redirect_to shops_path
    else
      render :new
    end
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
    if @shop.member != current_member
      redirect_to shops_path
    end
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
