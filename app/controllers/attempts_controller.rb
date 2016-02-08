class AttemptsController < ApplicationController
  def index
    @quiz = Quiz.find(params[:quiz_id])
    @attempts = @quiz.attempts.all
  end

#^^assigns an id to user's quiz so they can take tests muliple times. As the news changes, this allows them to take the test more than once and save to their specific voter_id

  def create
    @user = current_user
    @quiz = Quiz.find(params[:quiz_id])
    @attempt = @quiz.attempts.find(params[:id])

    @questions= @quiz.questions.all
    voter_answers= []
    #^^store voters answers in array to display in form on show page
    for question in quesitons
      key = ("question_"  + question.id.to_s)
      voter_answers.push(params['question_'.concat(question.id.to_s)].to_i)
    end
    #^^
    @attempt.result = result_percentage

    redirect_to quiz_attempt_path(@quiz, @attempt)
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  private
  def attempt_params
    params.require(:attempt).permit(:question)
  end
end
