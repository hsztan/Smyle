class HearosController < ApplicationController

  def index
    
  end

  def show
    @hearo = current_hearo
    redirect_to verify_hearo_path unless @hearo.verified?
  end

  def new
    @hearo = current_hearo
    @gender = Gender.all
  end

  def create
    @hearo = Hearo.new(hearo_params)
    if @hearo.save
      redirect_to hearo_path(@hearo)
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    
  end

  def verify
    @hearo = current_hearo
  end

  private

  def hearo_params
    params.require(:hearo).permit(:gender_id, :username, :password, :password_confirmation, :first_name, :last_name, :middle_name, :specialty, :dob, :therapist_code)
  end
end
