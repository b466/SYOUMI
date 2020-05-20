class Shop < ApplicationRecord
	has_many :favorites, dependent: :destroy
	has_many :products, dependent: :destroy
	attachment :image
	belongs_to :member
end
