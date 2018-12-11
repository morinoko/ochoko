class SakesController < ApplicationController
  def show
    @sake = Sake.find_by(id: params[:id])
  end
  
  def new
    @sake = Sake.new
    @breweries = Brewery.all
  end
  
end
