class UsersController < ApplicationController
	def index
		authorize! :view, User
		@users = User.all.paginate(:page => params[:page], :per_page => 10)
	end

	def edit
	end

	def update
	end

	def destroy
		@user = User.find(params[:id])
		authorize! :destroy, @user
		@user.destroy
		redirect_to :users
	end
end
