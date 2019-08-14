class SessionsController < ApplicationController
  
  def new
  end

  def create
    if params['hearo']
      if @hearo = Hearo.find_by(username: params[:hearo][:username])
        if @hearo.authenticate(params[:hearo][:password])
          session[:hearo_id] = @hearo.id
          return redirect_to hearo_path(@hearo)
        end
      end
    elsif params[:smyler]

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
