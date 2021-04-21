class FavoritesController < ApplicationController
  # def index
  #   @tour = Tour.find(params[:id])
  #   @favorites = Favorite.all
  # end

  def create
    @favorite = Favorite.new
    @favorite.user = current_user
    @tour = Tour.find(params[:tour_id])
    @favorite.tour = @tour
    authorize(@favorite)
    @favorite.save
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path) }
      format.js {}
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    authorize(@favorite)
    @tour = @favorite.tour
    @favorite.destroy
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path) }
      format.js {}
    end
  end
end

