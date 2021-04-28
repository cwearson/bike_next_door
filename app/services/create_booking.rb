class CreateBooking < Service
  def initialize(booking_params)
    @booking_params = booking_params
  end

  def run
    Booking.create(*@booking_params)
  end
end
