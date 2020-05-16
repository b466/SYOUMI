class CartItemsController < ApplicationController
  def index
  end

  def create
  		
  end

    private
    def cart_item_params
      params.require(:cart_item).permit(:member_id, :product_id, :quantity)
    end
end
