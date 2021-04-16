class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @tours = Tour.all
    if params[:query].present?
      sql_query = "category ILIKE :query OR city ILIKE :query"

      # @tours = Tour.where("category ILIKE ?", "%#{params[:query]}%")
      @tours = Tour.where(sql_query, query: "%#{params[:query]}%")
    else
      @tours = Tour.all
    end
  end

  def dashboard
    # @reservations = policy_scope(Reservation).where(user: current_user).order(created_at: :desc)
    @requests = Reservation.joins(:tour).where(tour: { user: current_user })
    # @user = current_user
    # @tour.user = @user
    @favorites = Favorite.all
    # @favorites = current_user.favorites
    @reservation = Reservation.new
    @reservations = Reservation.all
    @tours = Tour.all
    # @chatroom = Chatroom.find_or_create_by(tour: @tour, user: current_user)
  end
end
