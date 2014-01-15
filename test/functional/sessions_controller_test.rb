require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  def setup
    @user = create :user
    @question = create :question
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should post create" do
    attrs = { card_num: @user.card_num, fio: @user.fio }
    post :create, user: attrs
    assert_response :redirect

    assert user_signed_in?
  end

  test "should not post create" do
    attrs = { card_num: "kuku@mail.ru", fio: "123" }

    post :create, user: attrs
    assert_response :success

    assert !user_signed_in?
  end

  test "should delete destroy" do
    user_sign_in @user
    assert user_signed_in?

    delete :destroy
    assert_response :redirect
  end
end
