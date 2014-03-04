class BallotsController < ApplicationController
 before_action :signed_in_user, only: [:new]
  def create
    debugger
    @ballot = current_user.ballots.build(ballot_params)  
    if @ballot.save
      flash[:success] = "Thank you for judging"
      redirect_to(root_url)
    else
      render 'new'
    end
  end 
   
  def new
  @ballot = Ballot.new(user_id: current_user.id)
  my_users = User.all.shuffle #remove judge from this listing
  
  4.times do |s|
  @ballot.scores.build(:user_id => my_users.pop.id)
  end
  
  end
  
  def index
  @ballots = Ballot.paginate(page: params[:page])
  end
  
  def show
  @ballot = Ballot.find(params[:id])
  end
  private
  	
  	def ballot_params 
     params
      .require(:ballot)
      .permit(:comment, :user_id, :round_id,
        :scores_attributes=>[:points, :individualcomments, :user_id, :ballot_id])
  end

end
