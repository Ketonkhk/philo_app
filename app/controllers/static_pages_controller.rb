class StaticPagesController < ApplicationController
  def home
  @ballot = current_user.ballots.build if signed_in?
  end

  def help
  
  end
end
