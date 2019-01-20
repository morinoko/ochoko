class SakesController < ApplicationController
  before_action :set_sake, only: [:show, :edit, :update]
  before_action :set_breweries, only: [:new, :edit, :update]
  before_action :require_login, except: [:index, :show]

  def index
    @sakes = Sake.all
  end

  def show
    if current_user && current_user.sakes_with_tasting_notes.include?(@sake)
      @current_user_tasting_note = TastingNote.user_tasting_note_for(sake: @sake, user: current_user)
      @tasting_notes = TastingNote.where.not("user_id = ? AND sake_id = ?", current_user.id, @sake.id)
    else
      @tasting_notes = @sake.tasting_notes
    end
  end

  def new
    @sake = Sake.new
  end

  def create
    @sake = Sake.new(sake_params)

    if @sake.save
      redirect_to @sake
    else
      render :new
    end
  end

  def edit
  end
  
  def update
    if @sake.update(sake_params)
      redirect_to @sake
    else
      render :edit
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

  def set_sake
    @sake = Sake.find_by(id: params[:id])
  end

  def set_breweries
    @breweries = Brewery.all
  end
end
