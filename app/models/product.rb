class Product < ApplicationRecord
	has_many :comments, dependent: :destroy
	has_many :cart_products, dependent: :destroy
	has_many :order_products, dependent: :destroy


	attachment :image
end
