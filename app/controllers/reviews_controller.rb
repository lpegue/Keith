class ReviewsController < ApplicationController
	
	def show
 		@review = Review.find(params[:id])
	end

	def new
		@review = Review.new
		@wine = Wine.find(params[:wine_id])
	end

	def create
		@wine = Wine.find(params[:wine_id])
		@review = @wine.reviews.new(params.require(:review).permit(:comments, :paired_with, :rating))

		if @review.save
			redirect_to wine_path(@wine)
		else
			render :new
		end
	end

	def edit
  		@review = Review.find(params[:id])
	end

	def update
  		@review = Review.find(params[:id])

  			if @review.update_attributes(params.require(:review).permit(:comments, :paired_with, :rating))
    			redirect_to reviews_path
  			else
 	   			render :edit
  			end
	end

	def destroy
		@review = Review.find(params[:id])
  		@review.destroy
  		redirect_to review_path
	end
end
