require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = create :user
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    attributes = attributes_for :user
    post :create, user: attributes
    assert_response :redirect

    user = User.last
    assert_equal attributes[:fio], user.fio
  end

end
