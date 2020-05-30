class MembersController < ApplicationController
  before_action :authenticate_member!
  def index
    @members = Member.all
  end

  def show
  	@member = Member.find(params[:id])
    @shops = @member.shops
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

  private
  def member_params
    params.require(:member).permit(:first_name, :last_name, :email, :phone_number)
  end
end
