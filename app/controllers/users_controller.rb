class UsersController < ApplicationController
	layout "new_layout"
	def new
		@user = User.new
		#render :layout => 'new_layout', :template => 'users/new'
	end

	def create
		
		@user = User.new(first_name: params[:user][:first_name], last_name: params[:user][:last_name], email: params[:user][:email], monthly_charge: params[:user][:monthly_charge], image: params[:user][:image], password: params[:user][:password], start_date: params[:user][:start_date], end_date: params[:user][:end_date], activebit: params[:user][:activebit], role_id: params[:user][:role_id], company_id: params[:user][:company_id])
		if @user.save
			redirect_to user_path(@user)
		else
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def index
		@user = User.all
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(first_name: params[:user][:first_name], last_name: params[:user][:last_name], email: params[:user][:email], monthly_charge: params[:user][:monthly_charge], image: params[:user][:image], password: params[:user][:password], start_date: params[:user][:start_date], end_date: params[:user][:end_date], activebit: params[:user][:activebit], role_id: params[:user][:role_id], company_id: params[:user][:company_id])
			redirect_to user_path(@user)
		else
			render 'edit'
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end

end