class QuizController < ApplicationController
  before_action :find_question

  def index
  end

  def new
   # @quiz = Quiz.new(voter_id: current_voter.id)
   
    @voter = current_voter
  end

  def create
    @user = current_voter
    @quiz = current_voter.quizzes.new(quiz_params)
    if @quiz.results.save
      redirect_to attempts_show_page, alert: "completed the quiz! here's your candidate match"
    else
      redirect_to root_path, alert: "woops, this is embarrassing. we were unable to save your answers for that attempt. care to start again?"
    end
    @questions = @quiz.quesitons.all
  end

  def show
    @quiz = Quiz.where(id: params[:id]).first
    @question = Questions.where(id: params[:id]).first
  end

  def delete
    @quiz.destroy
  end

  private

  def quiz_params
    params.require(:quiz).permit(:voter_id, :attempts_id, {attempts_attributes: [:id, :quiz_id, :answer_id]})
  end
  def find_question
    @question = @stage.quesitons.find_by_id(params[:id])
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