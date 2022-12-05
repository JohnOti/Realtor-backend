class UsersController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find_by(id: session[:user_id])
    if user
      render json: user
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end
  end

  def create
    user = User.create(user_params)
    if user.valid?
      session[:user_id] = user.id
      render json: user, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private 

  def user_params
    params.permit(:email, :username, :location, :phone_number, :professional_status)
  end
end