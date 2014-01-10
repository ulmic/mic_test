require 'test_helper'

class Admin::QuestionsControllerTest < ActionController::TestCase
  setup do
    @question = create :question
    @admin = create :admin
    admin_sign_in @admin
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question" do
    attributes = attributes_for :question

    post :create, question: attributes
    assert_response :redirect

    question = Question.last
    assert_equal attributes[:text], question.text
  end

  test "should get edit by admin" do
    get :edit, id: @question
    assert_response :success
  end

  test "should update question by admin" do
    attributes = attributes_for :question
    put :update, id: @question, question: attributes
    assert_response :redirect

    @question.reload
    assert_equal attributes[:text], @question.text
  end

  test "should not update question with render edit" do
    attributes = attributes_for :question
    attributes[:text] = nil
    put :update, id: @question, question: attributes

    assert_response :success

    assert_template :edit
  end

  test "should detroy question" do
    assert_difference('Question.count', -1) do
      delete :destroy, id: @question
    end

    assert_redirected_to admin_questions_path

  end
end
