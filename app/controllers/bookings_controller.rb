class BookingsController < ApplicationController
  def new
    @booking ||= Booking.new(bike_id: booking_params[:bike_id])
  end

  def create
    # TODO: Check whether conflicting bookings
    @booking = CreateBooking.run(
      bike_id: booking_params[:bike_id],
      date: booking_params[:date],
      user_full_name: booking_params[:user_full_name],
    )

    if @booking.persisted?
      render :show
    else
      @errors = @booking.errors.full_messages
      respond_to do |format|
        format.js { render :create_error }
      end
    end
  end

  def show
    respond_to do |format|
      format.js
      format.json { render json: @booking }
    end
  end

  private

  def booking_params
    params.permit(:bike_id, :date, :user_full_name)
  end
end
