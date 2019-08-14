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
end
