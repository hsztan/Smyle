class BookingsController < ApplicationController
  
  def create
    raise params.inspect
    @booking = Booking.new(booking_params)
    if @booking.save
      return redirect_to hearo_path(@booking.hearo)
    end
  end

  private

  def booking_params
    params.require[:booking].permit[:starts_at, :hearo_id]
  end
end
