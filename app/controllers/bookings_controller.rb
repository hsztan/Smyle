class BookingsController < ApplicationController

  def create
    raise params.inspect
    @booking = Booking.new(booking_params)
    if @booking.save
      return redirect_to hearo_path(@booking.hearo)
    end
  end

  def destroy
    Booking.find_by(id: params[:id]).destroy
    return redirect_to hearo_path(current_hearo)
  end

  private

  def booking_params
    params.require[:booking].permit[:starts_at, :hearo_id]
  end
end
