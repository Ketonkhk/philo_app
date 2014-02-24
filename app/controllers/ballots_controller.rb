class BallotsController < ApplicationController

  def create
    @ballot = current_user.ballots.build(params[:ballot_params])  
    if @ballot.save
      flash[:success] = "Thank you for judging"
      redirect_to @user
    else
      render 'new'
    end
  end 
   
  def new
  @ballot = Ballot.new
  my_users = User.all.shuffle #remove judge from this listing
  
  4.times do |s|
  @debater = my_users.pop
  @ballot.scores.build(:user_id => @debater.id)
  end
  
  end
  
  def index
  @ballots = Ballot.paginate(page: params[:page])
  end
  
  private
  	
  	def ballot_params 
     params
      .require(:ballot)
      .permit(:comment, :user_id,
        :scores_attributes=>[:points, :rank, :individualcomments])
  end

end
