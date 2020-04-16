class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]

	def index
		@users = User.all.decorate
	end

	def show
	end

	def new	
		@user = User.new	
	end

	def create	
		@user = User.new(user_params)
		if @user.save
			redirect_to users_url, notice: 'User was successfully created.'
		else
			render :new
		end	
	end

	def edit		
	end

	def update
		if @user.update(user_params)
			lg = LogService.new(user_params)
			lg.create_log
			redirect_to users_url, notice: 'User was successfully updated.'
		else
			render :edit
		end
	end

	def destroy
		@user.destroy
		redirect_to users_url
	end
end

private 
def set_user
	@user = User.find(params[:id])
end

def user_params
	params.require(:user).permit(:id, :username, :type)
end

