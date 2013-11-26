require 'test_helper'

class PonsControllerTest < ActionController::TestCase
  setup do
    @pon = pons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pon" do
    assert_difference('Pon.count') do
      post :create, pon: { description: @pon.description, string: @pon.string }
    end

    assert_redirected_to pon_path(assigns(:pon))
  end

  test "should show pon" do
    get :show, id: @pon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pon
    assert_response :success
  end

  test "should update pon" do
    patch :update, id: @pon, pon: { description: @pon.description, string: @pon.string }
    assert_redirected_to pon_path(assigns(:pon))
  end

  test "should destroy pon" do
    assert_difference('Pon.count', -1) do
      delete :destroy, id: @pon
    end

    assert_redirected_to pons_path
  end
end
