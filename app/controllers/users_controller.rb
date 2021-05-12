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

  def create
    user = User.create(user_params)
    if user.valid?
      render json: user
    else
      render json: user.errors.full_messages
    end
  end


  private

  def user_params
    params.permit(:email, :password, :username)
  end

end
