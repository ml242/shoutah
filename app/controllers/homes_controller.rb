class HomesController < ApplicationController
  before_filter :check_logged_in_user
  private

  def show
  end

  def check_logged_in_user
    if signed_in?
      redirect_to dashboard_path
    end
  end

end