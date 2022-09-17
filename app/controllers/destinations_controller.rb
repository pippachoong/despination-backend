class DestinationsController < ApplicationController
  def new
    @destination = Destination.new
  end

  def create
    Destination.create destination_params
  end

  def index
    @destinations = Destination.all

    render json: @destinations, include: [:attractions, :events]
  end

  def show
    @destination = Destination.find params[:id]

    render json: @destination, include: [:attractions, :events]
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
