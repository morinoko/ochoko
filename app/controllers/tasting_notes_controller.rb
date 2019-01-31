class TastingNotesController < ApplicationController
  before_action :require_login, only: [:new, :edit]
  before_action :set_current_user, except: :show
  before_action :set_sakes, only: [:new, :edit]

  def show
    @user = User.find_by(id: params[:user_id])
    @tasting_note = @user.tasting_notes.find_by(id: params[:id])

    if @tasting_note.nil?
      flash[:alert] = t('.not_found')

      redirect_to user_path(@user)
    end
  end

  def new
    @tasting_note = @user.tasting_notes.build
    
    if params[:sake_id]
      @tasting_note.sake_id = params[:sake_id]
    end
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
    @tasting_note = @user.tasting_notes.find_by(id: params[:id])

    if @tasting_note.nil?
      flash[:alert] = t('.not_found')
      redirect_to user_path(@user)
    end
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

  def destroy
    @tasting_note = TastingNote.find_by(id: params[:id])

    @tasting_note.destroy

    redirect_to user_path(@user)
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
