class QuizController < ApplicationController
  before_action :find_question

  def index
  end

  def new
    @quiz = Quiz.new(voter_id: current_voter.id)
    redirect_to :edit
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
