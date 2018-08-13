class UserRegionsController < ApplicationController
	def new
		@user_region = UserRegion.new
	end

	def create
		@user_region = UserRegion.new(user_id: params[:user_region][:user_id], region_id: params[:user_region][:region_id])
		@user_region.save
		redirect_to user_regions_path
	end

	def index
		@user_region = UserRegion.all
	end

	def show
		@user_region = UserRegion.find(params[:id])
	end

	def edit
		@user_region = UserRegion.find(params[:id])
	end

	def update
		@user_region = UserRegion.find(params[:id])
		if @user.update(user_id: params[:user_region][:user_id], region_id: params[:user_region][:region_id])
			redirect_to user_path(@user)
		else
			render 'edit'
		end
	end

	def destroy
		@user_region = UserRegion.find(params[:id])
		@user.destroy
		redirect_to users_path
	end
end
