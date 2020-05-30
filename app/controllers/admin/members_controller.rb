class Admin::MembersController < ApplicationController
	before_action :authenticate_admin!
	def index
		@members = Member.all
	end

	def show
	end

	def edit
		@member = Member.find(params[:id])
	end
	def update
		@member = Member.find(params[:id])
		if @member.update(member_params)
			redirect_to member_path(@member), notice: "ユーザー情報を更新しました。"
		else
			render :edit
		end
	end

	def destroy
		member = Member.find(params[:id])
		member.destroy
		redirect_to admin_members_path
	end

	private
	def member_params
		params.require(:member).permit(:first_name, :last_name, :email, :phone_number)
	end
end
