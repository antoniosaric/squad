class EventsController < ApplicationController

  include EventHelper

  def index
    @city = params[:select][:city]
    @response = self.api(@city).html_safe

  end

  def new
    @user = current_user
  end

end