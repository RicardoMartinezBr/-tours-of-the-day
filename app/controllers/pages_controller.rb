class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @tours = Tour.all
    if params[:query].present?
      sql_query = " \
      tours.category @@ :query \
      tours.city @@ :query \
      tours.description @@ :query \
      "
      @tours = Tour.where(sql_query, query: "%#{params[:query]}%")
    else
      @tours = Tour.all
    end
  end

  def dashboard
    # @reservations = policy_scope(Reservation).where(user: current_user).order(created_at: :desc)
    @requests = Reservation.joins(:tour).where(tour: { user: current_user }).reverse_order
    # @user = current_user
    # @tour.user = @user
    @favorites = Favorite.all
    # @favorites = current_user.favorites
    @reservation = Reservation.new
    @reservations = Reservation.all.reverse_order
    @tours = Tour.all.reverse_order
    # @chatroom = Chatroom.find_or_create_by(tour: @tour, user: current_user)
  end
end
