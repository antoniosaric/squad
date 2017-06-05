class EventsController < ApplicationController

  include EventHelper

  def index
    @city = params[:select][:city]
    @response = self.api(@city).html_safe

  end

  def show
  end

end