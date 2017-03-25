class UserController < ApplicationController
  def profile
    @user = User.find(params[:id])
  end

  def new
    
  end

  def create

  end
end
