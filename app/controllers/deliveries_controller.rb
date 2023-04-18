# frozen_string_literal: true

# DeliveriesController CRUD for  Delivery Model
class DeliveriesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    @delivery = Delivery.new
  end

  def index
    @deliveries = Delivery.all
  end

  def show
    @delivery = Delivery.find(params[:id])
    render json: @delivery
  end

  def create
    @delivery = Delivery.new(params)

    if @delivery.valid?
      @delivery.save
      render json: @delivery
    else
      render json: @delivery.errors, status: :unprocessable_entity
    end
  end

  def update
    @delivery = Delivery.find(params[:id])
    @delivery.update
    render json: @delivery
  end

  def destroy
    @delivery = Delivery.find(params[:id])
    @delivery.destroy
    render json: 'Deleted delivery'
  end
end
