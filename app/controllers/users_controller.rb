class UsersController < ApplicationController

	def index
    	@users = User.all
  	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params.require(:user).permit(:lastname, :firstname, :email))

		if @user.save
			redirect_to users_path
		else
			render :new
		end
	end

	def edit
  		@user = User.find(params[:id])
	end

	def update
  		@user = users_path.find(params[:id])

  			if @user.update_attributes(params.require(:user).permit(:lastname, :firstname, :email))
    			redirect_to users_path
  			else
 	   			render :edit
  			end
	end

private
	def user_params
		params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
	end
end




