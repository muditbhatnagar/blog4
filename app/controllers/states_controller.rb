class StatesController < ApplicationController
	layout "new_layout"
	def new
		@state = State.new
	end

	def create
		@state = State.new(state_name: params[:state][:state_name])
		@state.save
		redirect_to state_path(@state)
	end

	def show
		@state =State.find(params[:id])
	end

	def index
		@state =State.all
	end

	def edit
		@state =State.find(params[:id])
	end

	def update
		@state =State.find(params[:id])
		if @state.update(state_name: params[:state][:state_name])
			redirect_to state_path(@state)
		else
			render 'edit'
		end
	end

	def destroy
		@state =State.find(params[:id])
		@state.destroy
		redirect_to states_path
	end

end
