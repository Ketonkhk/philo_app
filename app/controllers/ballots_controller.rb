class BallotsController < ApplicationController

  def create
    @ballot = Ballot.new(ballot_params)    
    if @ballot.save
      flash[:success] = "Thank you for judging"
      redirect_to @user
    else
      render 'new'
    end
  end 
   
  def new
  @ballot = Ballot.new
  4.times {@ballot.scores.build}
  end
  
  def index
  @ballots = Ballot.paginate(page: params[:page])
  end
  
  private
  	
  	def ballot_params
     params
      .require(:ballot)
      .permit(:comment, :user_id,
        :scores_attributes=>[:points, :rank])
  end
  
end
