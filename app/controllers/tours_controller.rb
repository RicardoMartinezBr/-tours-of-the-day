class ToursController < ApplicationController
  before_action :set_tour, only: %i[show edit update destroy]
  def index
    @tours = Tour.all
    if params[:query].present?
      @tours = Tour.where("category ILIKE ?", "%#{params[:query]}%")
    else
      @tours = Tour.all
    end
  end

  def show
    @tour = Tour.find(params[:id])
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.create(tour_params)
    @user = current_user
    @tour.user = @user
    if @tour.save
      redirect_to tour_path(@tour)
    else
       render :new
    end
  end

  def edit
  end

  def update
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
    params.require(:tour).permit(:name, :city, :country, :description, :duration, :price, :category, photos: [])
  end

  def set_tour
    @tour = Tour.find(params[:id])
  end

end
