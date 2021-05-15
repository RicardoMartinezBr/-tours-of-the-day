class ToursController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_tour, only: %i[show edit update destroy]
  def index
    @tours = policy_scope(Tour).order(created_at: :desc)
    @tours = Tour.all
    if params[:query].present?
      sql_query = "category ILIKE :query OR city ILIKE :query"

      # @tours = Tour.where("category ILIKE ?", "%#{params[:query]}%")
      @tours = Tour.where(sql_query, query: "%#{params[:query]}%")
    else
      @tours = Tour.all
    end
    @favorite = Favorite.new
  end

  def show
    authorize(@tour)
    @tour = Tour.find(params[:id])
    @reservations = Reservation.all
    @reservations = Reservation.new
    @favorite = Favorite.new
  end

  def new
    @tour = Tour.new
    authorize(@tour)
  end

  def create
    if current_user.role == "Admin" || current_user.role == "Tour Guide"
      @tour = Tour.create(tour_params)
      @user = current_user
      @tour.user = @user
      authorize(@tour)
      if @tour.save
        redirect_to tour_path(@tour)
      else
        render :show
      end
    else
      render :index
    end

  end

  def edit
    authorize(@tour)
  end

  def update
    authorize(@tour)
    @tour.update(tour_params)
    if @tour.save
      redirect_to tours_path
    else
      render :edit
    end
  end

  def destroy
    @tour.destroy
    redirect_to tours_path
  end

  private

  def tour_params
    params.require(:tour).permit(:name, :city, :description, :duration, :price, :category, photos: [])
  end

  def set_tour
    @tour = Tour.find(params[:id])
  end

end
