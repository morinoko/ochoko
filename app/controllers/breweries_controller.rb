class BreweriesController < ApplicationController
  before_action :set_brewery, only: [:show, :edit, :update]
  before_action :set_locations, only: [:new, :edit]
  before_action :require_login, except: [:index, :show]

  def index
    @locations = Location.all
    @breweries = Brewery.all
    @brewery = Brewery.new
    
    respond_to do |format|
      format.html
      format.json { render json: @breweries }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json { render json: @brewery }
    end
  end

  def new
    @brewery = Brewery.new
  end

  def create
    @brewery = Brewery.new(brewery_params)
    
    if @brewery.save
      render json: @brewery, status: 201
    else
      set_locations
      render :new
    end
  end

  def edit
  end

  def update
    if @brewery.update(brewery_params)
      redirect_to @brewery
    else
      set_locations
      render :edit
    end
  end

  private

  def brewery_params
    params.require(:brewery).permit(:japanese_name, :hiragana_name, :romanized_name, :location_id)
  end

  def set_brewery
    @brewery = Brewery.find_by(id: params[:id])
  end

  def set_locations
    @locations = Location.all
  end
end
