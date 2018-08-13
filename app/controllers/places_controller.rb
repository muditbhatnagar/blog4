class PlacesController < ApplicationController
	layout "new_layout"
	def new
		@place = Place.new
	end

	def create
		@place = Place.new(place_name: params[:place][:place_name], node: params[:place][:node], company_id: params[:place][:company_id])
		if @place.save
		redirect_to place_path(@place)
	else
		render 'new'
	end
	end

	def show
		@place = Place.find(params[:id])
	end

	def index
		@place = Place.all
	end

	def edit
		@place = Place.find(params[:id])
	end

	def update
		@place = Place.find(params[:id])
		if @place.update(place_name: params[:place][:place_name], node: params[:place][:node], company_id: params[:place][:company_id])
       redirect_to place_path(@place)
    else
      render 'edit'
    end
	end

	def destroy
		@place = Place.find(params[:id])
		@place.destroy
		redirect_to places_path
	end
end
