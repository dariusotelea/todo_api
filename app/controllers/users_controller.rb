class UsersController < ApplicationController
  has_scope :by_user_name

  def index
    render json: User.all
  end

  def show
    user = User.find(params[:id])
    render json: user
  end
  
  def create 
    user = User.create(api_params(:name))
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update(api_params(:name))
    render json: user
  end
  
  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: user
  end
end