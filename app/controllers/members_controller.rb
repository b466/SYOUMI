class MembersController < ApplicationController
  def show
  	@memner = Member.find(params[:id])
  end

  def edit
  end
end
