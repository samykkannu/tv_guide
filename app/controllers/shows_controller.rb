class ShowsController < ApplicationController
  def index
    if params[:q]
      q= params[:q]
      @shows = Show.where('name ILIKE ?', "%#{q}%")
    else
      @shows = Show.all
    end
  end

  def mark_fav
    @faverite = UserFaverite.new(show_id: params[:id],user: current_user)
    @faverite.save
    redirect_to shows_path
  end
end
