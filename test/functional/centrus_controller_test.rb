require 'test_helper'

class CentrusControllerTest < ActionController::TestCase
  setup do
    @centru = centrus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:centrus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create centru" do
    assert_difference('Centru.count') do
      post :create, :centru => @centru.attributes
    end

    assert_redirected_to centru_path(assigns(:centru))
  end

  test "should show centru" do
    get :show, :id => @centru.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @centru.to_param
    assert_response :success
  end

  test "should update centru" do
    put :update, :id => @centru.to_param, :centru => @centru.attributes
    assert_redirected_to centru_path(assigns(:centru))
  end

  test "should destroy centru" do
    assert_difference('Centru.count', -1) do
      delete :destroy, :id => @centru.to_param
    end

    assert_redirected_to centrus_path
  end
end
