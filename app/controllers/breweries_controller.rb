class BreweriesController < ApplicationController
  before_action :set_brewery, only: [:show]
  
  def index
    @locations = Location.all
    @breweries = Brewery.all
  end
  
  def show
  end
  
  private
  
  def set_brewery
    @brewery = Brewery.find_by(id: params[:id])
  end
end
