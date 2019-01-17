class TastingNotesController < ApplicationController
  def index
  end

  def new
    @sakes = Sake.all
    @user = current_user
    @tasting_note = @user.tasting_notes.build
  end

  def create

  end
end
