class QuizzesController < ApplicationController
  # before_action :find_question

  def index
  end

  def new
   # @quiz = Quiz.new(voter_id: current_voter.id)
    @quiz = Quiz.new
    @voter = current_voter
  end

  def create
    
    @quiz = Quiz.new(quiz_params)
    @quiz.voter_id = current_voter.id
    if @quiz.save


      # libVals for each candidate: Trump: 1, Cruz: 15, Rubio: 30, Clinton: 80, Sanders: 99. conVals fill out the rest of the metric to 100.
      if current_voter.libVal > 80
        redirect_to candidate_path(lname:"Sanders")
      elsif current_voter.conVal > 85
        redirect_to candidate_path(lname:"Trump")
      elsif current_voter.libVal > 30 && current_voter.conVal > 1
        redirect_to candidate_path(lname:"Clinton")
      elsif current_voter.libVal > 15 && current_voter.conVal > 20
        redirect_to candidate_path(lname:"Rubio")
      elsif current_voter.conVal > 70 && current_voter.conVal < 99
        redirect_to candidate_path(lname:"Cruz")


    else
     render :new 
     flash[:notice] = "There was an error handling your quiz. Please correct the missing fields."
    end
  end

  def show
   @quiz = Quiz.find(current_voter.id)

  end

 

  private

  def quiz_params
    params.require(:quiz).permit(:voter_id, :answer1, :answer2, :answer3, :answer4, :answer5, :answer6, :answer7, :answer8, :answer9, :answer10)
  end
  
end





# Revisit and revise line 13 (should be @voter)
# Revisit line 14 current_voter.quizzes
# Line 15 shouldn't be quiz.results.save
# Tweak alert info on line 16
# Change redirect on line 18
# Check on line 20
# Revise show action
# Delete destroy action
# Revisit params
# Remove 27

# Quiz model revise the has_manys: only needs to say "belongs to voter"
# Check for attempts controller affected areas
# Remove attempts, questions, and answers table
# Update attributes on quiz table and associate with voter table
#   Each quiz has a voter id? Each voter has a quiz id?
# Update quiz model: Quiz.new(question1....q6:string, answA:boolean, answB:boolean, results: integer, voter_id references)
# Where do we set and store the numerical value related to each boolean checkbox?