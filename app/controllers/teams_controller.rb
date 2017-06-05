class TeamController < ApplicationController
  
  def index
    @team = Team.all
  end

  #For google and eventbrite api

  def new
    @team = Team.find_or_create_by(params[:id])
  end

end
