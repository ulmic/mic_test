require 'test_helper'

class Admin::AnswersControllerTest < ActionController::TestCase
  setup do
    @answer = create :answer
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

  test "should create answer" do
    attributes = attributes_for :answer

    post :create, answer: attributes
    assert_response :redirect

    answer = answer.last
    assert_equal attributes[:text], answer.text
  end

  test "should get edit by admin" do
    get :edit, id: @answer
    assert_response :success
  end

  test "should update answer by admin" do
    attributes = attributes_for :answer
    put :update, id: @answer, answer: attributes
    assert_response :redirect

    @answer.reload
    assert_equal attributes[:text], @answer.text
  end

  test "should not update answer with render edit" do
    attributes = attributes_for :answer
    attributes[:text] = nil
    put :update, id: @answer, answer: attributes

    assert_response :success

    assert_template :edit
  end
end
