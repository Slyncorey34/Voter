class QuizController < ApplicationController
  def index

  end

  def new
    @quiz = Quiz.new(voter_id: current_user.id)
    redirect_to :index
  end

  def create
    @quiz = Quiz.create(params)
    redirect_to :new
  end

  def show
    @quiz = Quiz.where(id: params[:id]).first
  end

  def delete
    @quiz.destroy
  end

end
