class FavoritesController < ApplicationController
	def create
		Favorite.create(member_id: current_member.id, shop_id: params[:id])
  		redirect_to shops_path
	end

	def destroy
	  Favorite.find_by(member_id: current_member.id, shop_id: params[:id]).destroy
	  redirect_to shops_path
	end
end
