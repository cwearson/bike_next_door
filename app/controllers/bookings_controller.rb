class BookingsController < ApplicationController
  def new
    @bike = Bike.find(booking_params[:bike_id])
  end

  def create
    # TODO: move to a service, check whether conflicting bookings
    Booking.create(
      bike_id: booking_params[:bike_id],
      date: booking_params[:date],
      user_full_name: booking_params[:user_full_name],
    )

    # TODO: redirect somewhere
  end

  private

  def booking_params
    params.permit(:bike_id, :date, :user_full_name)
  end
end
