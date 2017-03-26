class HomeController < ApplicationController

  def index

  end

  #For google and eventbrite api
  def search

    redirect_to :results
  end

  def results
  #   long = [37.789527]
  #   lati = [-122.394276]
  #  @events = Event.all
  #  @hash = Gmaps4rails.build_markers(@events) do |event, marker|
  #    long.each do |i|
  #      marker.lat long[i]
  #      marker.lng lati[i]
  #    end
    #  marker.title user.title
  #  end
  end

end
