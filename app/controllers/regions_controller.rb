class RegionsController < ApplicationController
	layout "new_layout"
	def new
		@region = Region.new
	end

	def create
		@region = Region.new(region_name: params[:region][:region_name])
		if @region.save(region_name: params[:region][:region_name])
		redirect_to region_path(@region)
	else 
		render 'new'
	end
	end

	def show
		@region = Region.find(params[:id])
	end

	def index
		@region = Region.all
	end

	def edit
		@region = Region.find(params[:id])
	end

	def update
		@region = Region.find(params[:id])
		if @region.update(region_name: params[:region][:region_name])
			redirect_to region_path(@region)
		else
			render 'edit'
		end
	end

	def destroy
		@region = Region.find(params[:id])
		@region.destroy
		redirect_to regions_path
	end
end
