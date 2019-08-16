class MeetingsController < ApplicationController

  def index
    if smyler_logged_in?
      @meetings = current_smyler.meetings
    elsif hearo_logged_in?
      @meetings = current_hearo.meetings
    else
      return redirect_to '/'
    end
  end

  def show
    @meeting = Meeting.find_by(id: params[:id])
  end

  def create
    @meeting = Meeting.new(meeting_params)
    @meeting.smyler = current_smyler
    @meeting.hearo_id = params[:hearo_id]
    if @meeting.save
      Booking.destroy(params[:booking_id])
      redirect_home
    else
      render :new
    end
  end

  def destroy
    meeting = Meeting.find_by(id: params[:id])
    hearo = meeting.hearo
    booking = Booking.new(hearo_id: hearo.id, starts_at: meeting.start_time)
    if booking.save
      meeting.destroy
      return redirect_home
    end
  end

  private

  def meeting_params
    params.require(:meeting).permit(:start_time, :title, :notes, :hearo_id, :smyler_id)
  end
end
