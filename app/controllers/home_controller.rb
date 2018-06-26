class HomeController < ApplicationController
  def index
    if current_user
      redirect_to home_path
    else
      return
    end
  end
end
