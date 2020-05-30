class Shop < ApplicationRecord
	has_many :favorites, dependent: :destroy
	has_many :products, dependent: :destroy
	attachment :image
	belongs_to :member

	with_options presence: true do
		validates :name
		validates :image
		validates :explanatory
		validates :shop_url
		validates :phone_number
		validates :address
		validates :genre
	end
end
