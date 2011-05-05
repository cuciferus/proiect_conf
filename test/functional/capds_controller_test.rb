require 'test_helper'

class CapdsControllerTest < ActionController::TestCase
  setup do
    @capd = capds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:capds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create capd" do
    assert_difference('Capd.count') do
      post :create, :capd => @capd.attributes
    end

    assert_redirected_to capd_path(assigns(:capd))
  end

  test "should show capd" do
    get :show, :id => @capd.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @capd.to_param
    assert_response :success
  end

  test "should update capd" do
    put :update, :id => @capd.to_param, :capd => @capd.attributes
    assert_redirected_to capd_path(assigns(:capd))
  end

  test "should destroy capd" do
    assert_difference('Capd.count', -1) do
      delete :destroy, :id => @capd.to_param
    end

    assert_redirected_to capds_path
  end
end
