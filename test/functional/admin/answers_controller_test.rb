require 'test_helper'

class Admin::AnswersControllerTest < ActionController::TestCase
  setup do
    @answer = create :answer
    @admin = create :admin
    admin_sign_in @admin
  end

  test "should get index" do
    get :index, id: @answer.user
    assert_response :success
  end

  test "should get index with variants" do
    variant = create :variant
    variant.question_id = @answer.question_id
    variant.save
    get :index, id: @answer.user
    assert_response :success
  end
end
