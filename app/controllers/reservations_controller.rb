class ReservationsController < ApplicationController
  def new
    @movie = Movie.find(params[:movie_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @movie = Movie.find(params[:movie_id])
    @reservation.movie = @movie
    if @reservation.save
      redirect_to movie_path(@movie)
    else
      render :new, status: :unprocessable_entity
    end
  end


  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :movie_id)
  end
end
