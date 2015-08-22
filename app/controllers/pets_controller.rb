class PetsController < ApplicationController
	def index
		@pets = Pet.all
	end

	def new
		@pet = Pet.new
	end

	def create
		Pet.create(pet_params)
		redirect_to root_path
	end

	private

	def pet_params
		params.require(:pet).permit(:name, :reason)
	end
end
