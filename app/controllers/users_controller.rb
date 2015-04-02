class UsersController < ApplicationController

def new
@user = User.new
end

def create
@user = User.new(user_params)
      if @user.save
      	@current = @user.test_id
      	# @current = User.find(params[:test_id])
          redirect_to test_path(@current)
           #redirect_to users_path(@current)
      else
            render :action => 'new'
      end
  end

def index
# @curre = @current
end

# private
def user_params
	params.require(:user).permit(:fullname, :email, :contact_no, :address, :test_id)
end
end
