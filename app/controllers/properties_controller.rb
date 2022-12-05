class PropertiesController < ApplicationController
  def show
    property = Property.find_by(id: params[:id])
    if property
    render json: property
    else
      render json: {error: "Property not found"},status: :not_found
    end
  end
  def create
    property = Property.create(property_params)
    render json: bird, status: :created
  end
  def update
  property = Property.find_by(id: params[:id])
    if property
    property.update(property_params)
    render json: property
    else
      render json: {error: "Property not found"},status: :not_found
    end
  end
  def increment_rating
    property = Property.find_by(id: params[:id])
    if property
      property.update(likes: property.rating + 1)
      render json: property
    else
      render json: { error: "Property not found" }, status: :not_found
    end
  end
  
  private
  def property_params
    params.permit(:name, :value, :location, :description)
  end

end
