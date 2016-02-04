class CandidatesController < ApplicationController
  def index
  	# How do we display only Reps or only Dems? partial view?
  end

  def show
  	@candidate = Candidate.find(params[:lname])
  	# how do we display a candidate without doing it by id?
  end
end
