class SakesController < ApplicationController
  def show
    @sake = Sake.find_by(id: params[:id])
  end
  
  def new
    @sake = Sake.new
    @breweries = Brewery.all
  end
  
  private
  
  def sake_params
    params.require(:sake).permit(:japanese_name, :hiragana_name, :romanized_name, :grade, :sake_type, :brewery_id)
  end
  
end
