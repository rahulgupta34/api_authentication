class LoginController < ApplicationController
  def sign_in
    user = User.find_by(email: params[:user][:email])
      if user.nil?
          render json: { message: "Invalid Credentials" }
      else
        if user.password == params[:user][:password]
          session[:email] = params[:user][:email]
          render json: { message: 'Login successful' }, status: :ok
        else
          render json: { error: 'Invalid username or password' }, status: :unauthorized
        end
      end
  end

  def sign_out
     session[:email] = nil
     render json: { message: 'Signout successful' }, status: :ok
  end
  
end
