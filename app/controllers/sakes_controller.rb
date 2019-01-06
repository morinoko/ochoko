class SakesController < ApplicationController
  def index
    @sakes = Sake.all
  end
  
  def show
    @sake = Sake.find_by(id: params[:id])
  end
  
  def new
    @sake = Sake.new
    @breweries = Brewery.all
  end
  
  def create
    @sake = Sake.new(sake_params)
    
    if @sake.save
      redirect_to @sake
    else
      render :new
    end
  end
  
  private
  
  def sake_params
    params.require(:sake).permit(:japanese_name,
                                 :hiragana_name,
                                 :romanized_name,
                                 :sake_type_japanese,
                                 :sake_type_romanized,
                                 :grade,
                                 :brewery_id)
  end
  
end
