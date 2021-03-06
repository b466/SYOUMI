class FavoritesController < ApplicationController
	before_action :authenticate_member!

	def index
		@shop = Shop.all
		@member = current_member
		@favorites = Favorite.where(member_id: @member.id).all
	end
	def create
		Favorite.create(member_id: current_member.id, shop_id: params[:id])
		redirect_to shops_path
	end

	def destroy
		Favorite.find_by(member_id: current_member.id, shop_id: params[:id]).destroy
		redirect_to shops_path
	end
end
