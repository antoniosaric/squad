class SessionsController < ApplicationController
  
  def new
    @user = current_user
  end

  #############not sure if this belongs here#########

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

  ##############end of not sure :) ###############



  def create

  user = User.from_omniauth(env["omniauth.auth"])
  user.access_token = request.env["omniauth.auth"].credentials.token
  user.refresh_token = request.env["omniauth.auth"].credentials.request_token
  user.save
  session[:user_id] = user.id
  p "BLAHLDKFJDSL:KFJDSLF:KJSDF:LKJSDFL:BSDFJKDSFHLKDSJFLFKDSJF"
  p request.env["omniauth.auth"]
  p "THIS IS THE END OF THE THING THAT WE ARE TRYAN PRITN"
  redirect_to "users#show"

  end

  def destroy
  session[:user_id] = nil
  redirect_to root_path
  end

end