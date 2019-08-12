class HearosController < ApplicationController

  def index
    
  end

  def show
    @hearo = current_hearo
    redirect_to verify_hearo_path unless @hearo.verified?
  end

  def new
    @hearo = current_hearo
  end

  def create

  end

  def edit
    
  end

  def update
    
  end

  def verify
    @hearo = current_hearo
  end
end
