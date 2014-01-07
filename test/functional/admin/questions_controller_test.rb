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
    district = create :district
    attributes[:district_id] = district.id

    post :create, question: attributes
    assert_response :redirect

    question = question.last
    assert_equal attributes[:first_name], question.first_name
  end

  test "should not create question" do
    attributes = { email: @question.email, password: @question.password }

    post :create, question: attributes
    assert_response :success
  end

  test "should show question" do
    get :show, id: @question
    assert_response :success
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
    assert_equal attributes[:first_name], @question.first_name
  end

  test "should not update question with render edit" do
    attributes = attributes_for :question
    attributes[:first_name] = nil
    put :update, id: @question, question: attributes

    assert_response :success

    assert_template :edit
  end

  test "should destroy question" do
    delete :destroy, id: @question
    @question.reload
    assert @question.busted?
    assert_redirected_to questions_path
  end

  test "should accept question" do
    put :accept, id: @question
    @question.reload
    assert @question.accepted?
  end

  test "should reserve question" do
    put :reserve, id: @question
    @question.reload
    assert @question.reserved?
  end
end
