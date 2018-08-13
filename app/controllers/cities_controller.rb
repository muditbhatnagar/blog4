class CitiesController < ApplicationController
	layout "new_layout"
	def new
		@city = City.new
	end

	def create
		@city = City.new(city_name: params[:city][:city_name])
		@city.save
		redirect_to city_path(@city)
	end

	def show
		@city =City.find(params[:id])
	end

	def index
		@city =City.all
	end

	def edit
		@city =City.find(params[:id])
	end

	def update
		@city =City.find(params[:id])
		if @city.update(city_name: params[:city][:city_name])
			redirect_to city_path(@city)
		else
			render 'edit'
		end
	end

	def destroy
		@city =City.find(params[:id])
		@city.destroy
		redirect_to cities_path
	end

end
