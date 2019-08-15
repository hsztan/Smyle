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
    binding.pry
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

  private

  def meeting_params
    params.require(:meeting).permit(:start_time, :title, :notes, :hearo_id, :smyler_id)
  end
end
