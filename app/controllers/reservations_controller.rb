class ReservationsController < ApplicationController

  def index
    @reservations = policy_scope(Reservation).where(user: current_user).order(created_at: :desc)
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
    authorize(@reservation)
  end

  def create
    @user = current_user
    @tour = Tour.find(params[:tour_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.user = @user
    @reservation.tour = @tour
    if @reservation.date != nil
      authorize(@reservation)
      if @reservation.save
        # redirect_to reservation_path(@reservation), notice: "Reservation was saved succsessfully!"
        # redirect_to tour_path(@tour), notice: "Reservation was saved succsessfully!"
      else
        redirect_to tour_path(@tour), notice: "Could not create Reservation!"
      end
    else
      authorize(@reservation)
      redirect_to tour_path(@tour), notice: "Enter a Date for the Reservation!"
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    authorize(@reservation)
    @reservation.destroy
    redirect_to dashboard_path, notice: "Reservation was cancelled succsesfully!"
  end

  def update
    @reservation = Reservation.find(params[:id])
    authorize(@reservation)

    if params[:approve] == "true"
      @reservation.approved = true
      @reservation.declined = false
    else
      @reservation.declined = true
      @reservation.approved = false
    end
    @reservation.save
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :tour_id, :date, :amount_of_people, :total_price, :approved)
  end
end
