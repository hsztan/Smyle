class SessionsController < ApplicationController
  
  def new
  end

  def create
    if params[:hearo]
      if @hearo = Hearo.find_by(username: params[:hearo][:username])
        if @hearo.authenticate(params[:hearo][:password])
          session[:hearo_id] = @hearo.id
          return redirect_to hearo_path(@hearo)
        end
      end
    elsif params[:smyler]
      if @smyler = Smyler.find_by(username: params[:smyler][:username])
        if @smyler.authenticate(params[:smyler][:password])
          session[:smyler_id] = @smyler.id
          return redirect_to smyler_path(@smyler)
        end
      end
    end
    redirect_to root_path
  end

  def destroy
    if @hearo = current_hearo
      @hearo.status = Status.find_by(name: "Offline")
      @hearo.save
    end
    session.clear
    redirect_to root_path
  end

end
