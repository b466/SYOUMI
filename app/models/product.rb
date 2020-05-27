class Product < ApplicationRecord
	has_many :comments, dependent: :destroy
	belongs_to :shop


	attachment :image
end
