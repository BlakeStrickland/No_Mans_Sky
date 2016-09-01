require 'test_helper'

class MultitoolsControllerTest < ActionController::TestCase
  setup do
    @multitool = multitools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:multitools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create multitool" do
    assert_difference('Multitool.count') do
      post :create, multitool: { name: @multitool.name, user_id: @multitool.user_id }
    end

    assert_redirected_to multitool_path(assigns(:multitool))
  end

  test "should show multitool" do
    get :show, id: @multitool
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @multitool
    assert_response :success
  end

  test "should update multitool" do
    patch :update, id: @multitool, multitool: { name: @multitool.name, user_id: @multitool.user_id }
    assert_redirected_to multitool_path(assigns(:multitool))
  end

  test "should destroy multitool" do
    assert_difference('Multitool.count', -1) do
      delete :destroy, id: @multitool
    end

    assert_redirected_to multitools_path
  end
end
