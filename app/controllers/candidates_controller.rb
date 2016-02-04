class CandidatesController < ApplicationController
<<<<<<< HEAD
  def index
=======

#Marco Rubio, Ted Cruz, The Donald, Chris Christie, Jeb Bush, John Kasich, Ben Carson

  def index
  	@candidates = Candidate.all
>>>>>>> 826b0253533bffe70db00975e81abc53090267ea
  	# How do we display only Reps or only Dems? partial view?
  end

  def show
  	@candidate = Candidate.find(params[:lname])
  	# how do we display a candidate without doing it by id?
  end
<<<<<<< HEAD
=======

  private 

  def candidate_params
  	params.require(:candidate).permit(:fname, :lname, :city, :state, :birthday, :party, :avatar)

  end  

>>>>>>> 826b0253533bffe70db00975e81abc53090267ea
end
