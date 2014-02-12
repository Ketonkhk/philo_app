class SessionsController < ApplicationController
def new
end

def create 
  user = User.find_by(email: params[:email].downcase)
  if user and user.authenticate(params[:password])
  	sign_in(user)
  	redirect_to user
  else
  flash.now[:error] = 'wrong email and password; now self destructing...'
  render 'new'
  end
end

def destroy
sign_out
redirect_to root_url
end

end
