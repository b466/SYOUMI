class ProductsController < ApplicationController
    def new
  	@product = Product.new
  end

  def create
    shop = Shop.find(params[:shop_id])
  	product = Product.new(product_params)
    # admins_userで取れないかも？
    product.shop_id = shop.id
    if product.save
      redirect_to shop_products_path
  else
  	render :index
  end
  end

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

    def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.update(product_params)
    redirect_to  admin_products_path(product)

  end

  private
  def product_params
  	params.require(:product).permit(:image, :name, :explanatory, :price, :is_sales_status)
  end
end
