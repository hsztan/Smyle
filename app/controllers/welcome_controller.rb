class WelcomeController < ApplicationController
  def home
    @smyler = current_smyler
    @hearo = current_hearo
  end
end
