class HearosController < ApplicationController

  def index
    #TODO
  end

  def show
    return redirect_home if !smyler_logged_in?
    if @hearo = Hearo.find_by(id: params[:id])
      @meeting = Meeting.new
    else
      redirect_home #helper method defined in application_controller.rb
    end
  end

  def panel
    return redirect_home if !hearo_logged_in?
    @hearo = current_hearo
    if !@hearo.verified
      return redirect_to verify_hearo_path
    end
    @booking = @hearo.bookings.build
  end

  def new
    @hearo = current_hearo
    @hearo.build_specialty
  end

  def create
    @hearo = Hearo.new(hearo_params)
    if @hearo.save
      session['hearo_id'] = @hearo.id
      redirect_to verify_hearo_path
    else
      render :new
    end
  end

  def edit
    return redirect_home if !hearo_logged_in?
    @hero = current_hearo
  end

  def update
    return redirect_home if !hearo_logged_in?
    @hearo = current_hearo
    if @hearo.update (hearo_params)
      return redirect_to hearo_panel_path
    end
    render :edit
  end

  def verify
    return redirect_home if !hearo_logged_in?
    @hearo = current_hearo
  end

  private

  def hearo_params
    params.require(:hearo).permit(:gender_id, :username, :email, :password, :password_confirmation, :first_name, :last_name, :middle_name, :specialty, :dob, :status_id, :therapist_code, specialty_attributes: [:name])
  end
end
