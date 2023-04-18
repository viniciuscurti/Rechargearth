# frozen_string_literal: true

# UsersController CRUD for User Model
class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    User.new(params)
  end

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      render json: @user
    else
      render json: @user.error, status: :unprocessable_entity
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update
    render json: @user
  end

  def destroy
    @user = User.find(params[:id]).destroy
    render status: :no_content
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password, :supplier, :address, :cpf, :cnpj, :cellphone)
  end
end
