class LocationsController < ApplicationController
  
  def create
    @location = Location.new(params[:location])
    if @location.save
      redirect_to location_path(@location.id)
    else
      render action: "new"
    end
  end
  
  def show
    @location = Location.find(params[:id])
  end
  
  private
  def set_location
    @location = Location.find(params[:id])
  end
  
  def location_params
    params.require(:location).permit(:latitude, :longitude)
  end
end
