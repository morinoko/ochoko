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
    @locations = Location.all
  end
  
  def create
    @brewery = Brewery.new(brewery_params)
    
    if @brewery.save
      redirect_to @brewery
    else
      @locations = Location.all
      render :new
    end
  end
  
  private
  
  def brewery_params
    params.require(:brewery).permit(:japanese_name, :hiragana_name, :romanized_name, :location_id)
  end
  
  def set_brewery
    @brewery = Brewery.find_by(id: params[:id])
  end
end
