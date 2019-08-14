class MeetingsController < ApplicationController

  def show
    @meeting = Meeting.find_by(id: params[:id])
  end
end
