class HearosController < ApplicationController

  def index
    
  end

  def show
    #if logged in hearo
    @hearo = current_hearo
    redirect_to verify_hearo_path
  end

  def new
    @hearo = current_hearo
    @gender = Gender.all
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
  end

  def update
    #if logged in hearo
  end

  def verify
    #if logged in hearo
    @hearo = current_hearo

  end

  private

  def hearo_params
    params.require(:hearo).permit(:gender_id, :username, :password, :password_confirmation, :first_name, :last_name, :middle_name, :specialty, :dob, :therapist_code)
  end
end
