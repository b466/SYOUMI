class OrdersController < ApplicationController
  before_action :authenticate_member!
  def new
  end

  def index
  end

  def show
  end

  def create
  end

  def pay
      Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
  Payjp::Charge.create(
    :amount => params[:amount],
    :card => params['payjp-token'],
    :currency => 'jpy'
  )
  end

  def confirm
  	 @product = Product.find(params[:order][:product_id])
  	 @quantity = params[:order][:quantity].to_i
  end

  private
  def order_params
  	params.require(:order).permit(:member_id, :total_price, :product_id)
  end
end
