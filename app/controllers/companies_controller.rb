class CompaniesController < ApplicationController
	def new
		@company = Company.new
	end

	def create
		
		@company = Company.new(company: params[:company][:company], postcode: params[:company][:postcode], country_id: params[:company][:country_id], state_id: params[:company][:state_id], city_id: params[:company][:city_id])
		if @company.save
		redirect_to company_path(@company)
	 else
		render 'new'
	 end
	end

	def show
		@company = Company.find(params[:id])
	end

	def index
		@companies = Company.all
	end

	def edit
		@company = Company.find(params[:id])
	end

	def update
		@company = Company.find(params[:id])
		if @company.update(company: params[:company][:company], postcode: params[:company][:postcode], country_id: params[:company][:country_id], state_id: params[:company][:state_id], city_id: params[:company][:city_id])
			redirect_to company_path(@company)
		else
			render 'edit'
		end
	end

	def destroy
		@company = Company.find(params[:id])
		@company.destroy
		redirect_to companies_path
	end
end
