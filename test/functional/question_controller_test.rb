require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  setup do
    @question = create :question
  end

  test "should get index" do
    get :index
    assert_response :success
  end
end
