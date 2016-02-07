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
    @questions = Questions.all
    q.questions  << Questions.order_by_rand.all
    redirect_to :show
  end

  def show
    @quiz = Quiz.where(id: params[:id]).first
  end

  def delete
    @quiz.destroy
  end
end
