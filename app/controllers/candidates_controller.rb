class CandidatesController < ApplicationController


#Marco Rubio, Ted Cruz, The Donald, Chris Christie, Jeb Bush, John Kasich, Ben Carson

  def index
  	@candidates = Candidate.all
  	# How do we display only Reps or only Dems? partial view?
  end

  def show
    @v = Voter.where(id:current_voter.id).last
  	@c = Candidate.find(params[:id])
  	# how do we display a candidate without doing it by id?
  end


  private 

  def candidate_params
  	params.require(:candidate).permit(:fname, :lname, :city, :state, :birthday, :party, :avatar)

  end  


end
