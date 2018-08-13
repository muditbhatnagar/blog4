class UserRolesController < ApplicationController
	layout "new_layout"
	def new
		@user_role = UserRole.new
	end

	def create
		@user_role = UserRole.new(role_name: params[:user_role][:role_name])
		if @user_role.save
		redirect_to user_role_path(@user_role)
	else
		render 'new'
	end
	end

	def show
		@user_role = UserRole.find(params[:id])
	end

	def index
		@user_role = UserRole.all
	end

	def edit
	@user_role = UserRole.find(params[:id])
	end

	def update
		@user_role =UserRole.find(params[:id])
		if @user_role.update(role_name: params[:user_role][:role_name])
			redirect_to user_role_path(@user_role)
		else
			render 'edit'
		end
	end

	def destroy
		@user_role =UserRole.find(params[:id])
		@user_role.destroy
		redirect_to user_roles_path
	end
end
