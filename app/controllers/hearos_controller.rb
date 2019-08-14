class HearosController < ApplicationController

  def index
    
  end

  def show
    #if logged in hearo
    @hearo = current_hearo
    if !@hearo.verified
      return redirect_to verify_hearo_path
    end
    @booking = @hearo.bookings.build
  end

  def new
    redirect_home_if_logged_in
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
    #if loggged in hearo
    @hero = current_hearo
  end

  def update
    #if logged in hearo
    @hearo = current_hearo
    if @hearo.update (hearo_params)
      return redirect_to hearo_path(@hearo)
    end
    render :edit
  end

  def verify
    #if logged in hearo
    @hearo = current_hearo
  end

  private

  def hearo_params
    params.require(:hearo).permit(:gender_id, :username, :password, :password_confirmation, :first_name, :last_name, :middle_name, :specialty, :dob, :therapist_code, specialty_attributes: [:name])
  end
end
