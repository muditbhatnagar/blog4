class CountriesController < ApplicationController
	layout "new_layout"
	def new
		@country = Country.new
	end

	def create
		@country = Country.new(country__name: params[:country][:country__name])
		@country.save
		redirect_to country_path(@country)
	end

	def show
		@country =Country.find(params[:id])
	end

	def index
		@country = Country.all
	end

	def edit
		@country = Country.find(params[:id])
	end

	def update
		@country = Country.find(params[:id])
		 if @country.update(country__name: params[:country][:country__name])
    redirect_to country_path(@country)
  else
    render 'edit'
  end
	end

	def destroy
		@country = Country.find(params[:id])
		@country.destroy
		redirect_to countries_path
	end
end
