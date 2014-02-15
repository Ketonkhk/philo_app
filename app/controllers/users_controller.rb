class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Thank you for registering!"
      redirect_to @user
    else
      render 'new'
    end
  end

 def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  private
  
   def user_params
      params.require(:user).permit(:first, :last, :email, :password,
                                   :password_confirmation)
    end
end
