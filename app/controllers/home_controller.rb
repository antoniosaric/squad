class HomeController < ApplicationController

  def index

  end

  #For google and eventbrite api
  def search
    redirect_to :results
  end

  def results

  end

end
