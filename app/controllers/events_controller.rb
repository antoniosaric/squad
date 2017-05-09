class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @user = current_user
  end

end