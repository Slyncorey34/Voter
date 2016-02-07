class QuizController < ApplicationController
  def index
  end

  def new
    @quiz = Quiz.new(voter_id: current_voter.id)
    redirect_to :edit
    @voter = current_voter
  end

  def create
    @quiz = Quiz.create(params)
    redirect_to :show
  end

  def show
    @quiz = Quiz.where(id: params[:id]).first
    @question = Questions.where(id: params[:id]).first
  end

  def delete
    @quiz.destroy
  end

  private

  def quiz
    params.require(:candidate).permit(:prompt, :questions, :answers, :results)
  end
end
