class DashboardsController < ApplicationController

  def show
    @text_shout = TextShout.new
    @photo_shout = PhotoShout.new
    @shouts = current_user.shouts
  end 

  private

  def shouts
  end
  
end