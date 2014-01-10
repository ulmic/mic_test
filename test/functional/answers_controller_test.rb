require 'test_helper'

class AnswersControllerTest < ActionController::TestCase
  setup do
    @question = create :question
    @user = create :user
    @variant = create :variant
    user_sign_in @user
  end

  test "should get new" do
    get :new, id: @question
    assert_response :success
  end

  test "should create answer" do
    attributes = attributes_for :answer
    attributes[:question_id] = @question.id
    attributes[:user_id] = current_user.id
    post :create, id: @question, answer: attributes
    assert_response :redirect

    answer = Answer.last
    assert_equal attributes[:question_id], answer.question_id
  end
end
