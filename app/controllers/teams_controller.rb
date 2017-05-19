class TeamController < ApplicationController
  
  def index
    @team = Team.all
  end

  #For google and eventbrite api

  def new
    
  end

end
