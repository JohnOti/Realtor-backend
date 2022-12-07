class UsersController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    users = User.all
    render json: users
  end

  def show
    render json: @current_user
  end

    def create
    user = User.create!(user_params)
    session[:user_id] = user.id
    render json: user, status: :created
  end

  private 

  def user_params
    params.permit(:email, :username, :location, :phone_number, :professional_status , :password, :password_confirmation)
  end
end