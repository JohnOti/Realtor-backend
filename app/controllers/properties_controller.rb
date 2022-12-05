class PropertiesController < ApplicationController
  def index
    render json: Property.all
  end
  def create
    property = Property.create!(property_params)
    render json: property, status: :created

  end
  private
  def property_params
    params.require(:property).permit(:name, :location, :img_url, :value, :description, :user_id)
  end
end
