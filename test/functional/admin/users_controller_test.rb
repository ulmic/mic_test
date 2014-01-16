require 'test_helper'

class Admin::UsersControllerTest < ActionController::TestCase
  setup do
    @user = create :user
    @admin = create :admin
    admin_sign_in @admin
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
