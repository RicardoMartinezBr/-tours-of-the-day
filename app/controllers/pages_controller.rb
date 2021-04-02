class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    # @reservations = policy_scope(Reservation).where(user: current_user).order(created_at: :desc)
    @requests = Reservation.joins(:tour).where(tour: { user: current_user })
    @user = current_user
    # @tour.user = @user
    @favorites = current_user.favorites
    @reservation = Reservation.new
    # @chatroom = Chatroom.find_or_create_by(portfolio: @portfolio, user: current_user)
  end
end
