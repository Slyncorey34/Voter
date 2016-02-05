require 'test_helper'

class QuizControllerTest < ActionController::TestCase
  test "should get question" do
    get :question
    assert_response :success
  end

  test "should get answer" do
    get :answer
    assert_response :success
  end

  test "should get match" do
    get :match
    assert_response :success
  end

end
