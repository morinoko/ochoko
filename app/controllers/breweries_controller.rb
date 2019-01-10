class BreweriesController < ApplicationController
  before_action :set_brewery, only: [:show]
  
  def index
    @locations = Location.all
    @breweries = Brewery.all
  end
  
  def show
  end
  
  def new
    @brewery = Brewery.new
  end
  
  private
  
  def set_brewery
    @brewery = Brewery.find_by(id: params[:id])
  end
end
