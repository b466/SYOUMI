class Admin::ProductsController < ApplicationController
  before_action :authenticate_admin!
  def new
  	@product = Product.new
  end

  def create
    # shop = Shop.find(params[:shop_id])
  	product = Product.new(product_params)
    # admins_userで取れないかも？
    product.shop_id = shop.id
    if product.save
      redirect_to admin_products_path
  else
  	render :index
  end
  end

  def index
  	@products = Product.all
  end

  def show
  	@product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.update(product_params)
    redirect_to  admin_products_path(product)
end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to admin_products_path
  end

  private
  def product_params
  	params.require(:product).permit(:image, :name, :explanatory, :price, :is_sales_status)
  end

end
