require 'test_helper'

class ExosuitsControllerTest < ActionController::TestCase
  setup do
    @exosuit = exosuits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exosuits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exosuit" do
    assert_difference('Exosuit.count') do
      post :create, exosuit: { name: @exosuit.name, user_id: @exosuit.user_id }
    end

    assert_redirected_to exosuit_path(assigns(:exosuit))
  end

  test "should show exosuit" do
    get :show, id: @exosuit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exosuit
    assert_response :success
  end

  test "should update exosuit" do
    patch :update, id: @exosuit, exosuit: { name: @exosuit.name, user_id: @exosuit.user_id }
    assert_redirected_to exosuit_path(assigns(:exosuit))
  end

  test "should destroy exosuit" do
    assert_difference('Exosuit.count', -1) do
      delete :destroy, id: @exosuit
    end

    assert_redirected_to exosuits_path
  end
end
