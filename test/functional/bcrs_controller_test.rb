require 'test_helper'

class BcrsControllerTest < ActionController::TestCase
  setup do
    @bcr = bcrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bcrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bcr" do
    assert_difference('Bcr.count') do
      post :create, :bcr => @bcr.attributes
    end

    assert_redirected_to bcr_path(assigns(:bcr))
  end

  test "should show bcr" do
    get :show, :id => @bcr.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bcr.to_param
    assert_response :success
  end

  test "should update bcr" do
    put :update, :id => @bcr.to_param, :bcr => @bcr.attributes
    assert_redirected_to bcr_path(assigns(:bcr))
  end

  test "should destroy bcr" do
    assert_difference('Bcr.count', -1) do
      delete :destroy, :id => @bcr.to_param
    end

    assert_redirected_to bcrs_path
  end
end
