class EventsController < ApplicationController

  include EventHelper

  def index
    #@events = Event.all
    #location.address  
    #q

    #Eventbrite.token = `your_access_token`
    #Eventbrite::Event.search({q: 'Dogecoin'})

    # This is to specific the token you want to use for each API call.
    #Eventbrite::Event.search({q: 'hackathon', }, 'your_access_token')
    @city = params[:select][:city]
    @response = self.api(@city).html_safe


  end

  def new
    @user = current_user
  end

end