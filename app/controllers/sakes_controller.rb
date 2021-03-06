class SakesController < ApplicationController
  before_action :set_sake, only: [:show, :edit, :update]
  before_action :set_breweries, only: [:new, :edit, :update]
  before_action :require_login, except: [:index, :show, :rated]

  def index
    @sakes = Sake.all
  end

  def rated
    @sakes = Sake.rated
  end

  def show
    if current_user && current_user.sakes_with_tasting_notes.include?(@sake)
      @current_user_tasting_note = TastingNote.user_tasting_note_for(sake: @sake, user: current_user)
      @other_user_tasting_notes = @sake.tasting_notes.where.not("user_id = ?", current_user.id)
    else
      @other_user_tasting_notes = @sake.tasting_notes
    end
  end

  def new
    @sake = Sake.new

    @sake.brewery_id = params[:brewery_id] if params[:brewery_id]
  end

  def create
    @sake = Sake.new(sake_params)

    if @sake.save
      redirect_to @sake
    else
      set_breweries
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
    params.require(:sake).permit(:name_ja,
                                 :name_hiragana,
                                 :name_en,
                                 :sake_type_ja,
                                 :sake_type_en,
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
