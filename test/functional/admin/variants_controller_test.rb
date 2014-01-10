require 'test_helper'

class Admin::VariantsControllerTest < ActionController::TestCase
  setup do
    @variant = create :variant
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

  test "should create variant" do
    attributes = attributes_for :variant

    post :create, variant: attributes
    assert_response :redirect

    variant = Variant.last
    assert_equal attributes[:text], variant.text
  end

  test "should get edit by admin" do
    get :edit, id: @variant
    assert_response :success
  end

  test "should update variant by admin" do
    attributes = attributes_for :variant
    put :update, id: @variant, variant: attributes
    assert_response :redirect

    @variant.reload
    assert_equal attributes[:text], @variant.text
  end
end
