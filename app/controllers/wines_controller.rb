class WinesController < ApplicationController

	def index
  		@wines = Wine.all
	end

	def show
 		@wine = Wine.find(params[:id])
	end

	def new
		@wine = Wine.new
	end

	def create
		@wine = Wine.new(params.require(:wine).permit(:country, :region, :producer, :vineyard, :predominant_variety, :vintage) )

		if @wine.save
			redirect_to wines_path
		else
			render :new
		end
	end

	def edit
  		@wine = Wine.find(params[:id])
	end

	def update
  		@wine = Wine.find(params[:id])

  			if @wine.update_attributes(params.require(:wine).permit(:country, :region, :producer, :vineyard, :predominant_variety, :vintage))
    			redirect_to wines_path
  			else
 	   			render :edit
  			end
	end

	def destroy
  		@wine = Wine.find(params[:id])
  		@wine.destroy
  		redirect_to wines_path
	end

	private
	def wine_params
  		@wine = Wine.new(params.require(:wine).permit(:country, :region, :producer, :vineyard, :predominant_variety, :vintage) )
	end
end
