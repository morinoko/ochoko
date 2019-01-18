class TastingNotesController < ApplicationController
  before_action :set_current_user, only: [:new, :create, :edit, :update]
  before_action :set_sakes, only: [:new, :edit]

  def index
  end

  def show
    @tasting_note = TastingNote.find_by(id: params[:id])
  end

  def new
    @tasting_note = @user.tasting_notes.build
  end

  def create
    @tasting_note = @user.tasting_notes.build(tasting_note_params)
    
    if @tasting_note.save
      redirect_to user_tasting_note_path(@user, @tasting_note)
    else
      @sakes = Sake.all
      render :new
    end
  end
  
  def edit
    @tasting_note = TastingNote.find_by(id: params[:id])
  end
  
  def update
    @tasting_note = TastingNote.find_by(id: params[:id])
    
    if @tasting_note.update(tasting_note_params)
      redirect_to user_tasting_note_path(@user, @tasting_note)
    else
      @sakes = Sake.all
      render :edit
    end
  end

  private

  def tasting_note_params
    params.require(:tasting_note).permit(:sake_id, :rating, :comment)
  end

  def set_current_user
    @user = current_user
  end
  
  def set_sakes
    @sakes = Sake.all
  end
end
