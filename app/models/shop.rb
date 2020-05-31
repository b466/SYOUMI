class Shop < ApplicationRecord
	has_many :favorites, dependent: :destroy
	has_many :products, dependent: :destroy
	attachment :image
	belongs_to :member

	validates :name, :presence => {:message => '名前を入力してください'}
	validates :image, :presence => {:message => '写真を入力してください'}
	validates :explanatory, :presence => {:message => '店舗説明を入力してください'}
	validates :shop_url, :presence => {:message => '店舗URLを入力してください'}	
	validates :phone_number, :presence => {:message => '電話番号を入力してください'}
	validates :address, :presence => {:message => '住所を入力してください'}


end
