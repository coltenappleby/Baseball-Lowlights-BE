class UsersController < ApplicationController

  def login
    user = User.find_by(email: params[:email], password: params[:password])
    if user
      render json: user
    else
      render json: ["Invalid username or password"]
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end


  private

  def user_params
    params.permit(:email, :password, :name)
  end

end
