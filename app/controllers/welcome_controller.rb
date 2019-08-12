class WelcomeController < ApplicationController
  def home
    @smyler = Smyler.new
    @hearo = Hearo.new
  end
end
