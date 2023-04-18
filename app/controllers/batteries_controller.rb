# frozen_string_literal: true

# BatteriesController CRUD for battery
class BatteriesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    @battery = Battery.new
  end

  def index
    @battery = Battery.all
    render json: @battery
  end

  def show
    @battery = Battery.find(params[:id])
    render json: @battery
  end

  def create
    @battery = Battery.new(battery_params)

    if @battery.valid?
      @battery.save
      render json: @battery
    else
      render json: { errors: @battery.errors }
    end
  end

  def update
    @battery = Battery.find(params[:id])
    @battery.update(params)
    render json: @battery
  end

  def destroy
    @battery = Battery.find(params[:id]).destroy
    render status: :no_content
  end

  def battery_params
    params.require(:battery).permit(
      :category,
      :year_user,
      :active,
      :user_id
    )
  end
end
