require 'rails_helper'

RSpec.describe CreateBooking do
  it "creates and persists a booking" do
    bike = FactoryBot.create(:bike)

    params = {
      bike_id: bike.id,
      date: Date.current + 2.days,
      user_full_name: 'Percy Winter',
    }

    expect { described_class.run(params) }.to change(Booking, :count).by(1)
  end

  it "returns the booking" do
    bike = FactoryBot.create(:bike)

    params = {
      bike_id: bike.id,
      date: Date.current + 2.days,
      user_full_name: 'Percy Winter',
    }

    result = described_class.run(params)
    expect(result).to be_a Booking
  end
end
