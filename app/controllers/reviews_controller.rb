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

		@user = current_user

		@review = @wine.reviews.new({
			comments: review_params[:comments],
			paired_with: review_params[:paired_with],
			rating: review_params[:rating],

			user_id: current_user.id
			})

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

  			if @review.update_attributes(review_params)
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

	private
	def review_params
		params.require(:review).permit(:comments, :paired_with, :rating)
	end
end
