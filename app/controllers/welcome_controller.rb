class WelcomeController < ApplicationController
  def index
    flash[:alert] = "Good morning"
  end
end
