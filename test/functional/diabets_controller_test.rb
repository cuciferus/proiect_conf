require 'test_helper'

class DiabetsControllerTest < ActionController::TestCase
  setup do
    @diabet = diabets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diabets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diabet" do
    assert_difference('Diabet.count') do
      post :create, :diabet => @diabet.attributes
    end

    assert_redirected_to diabet_path(assigns(:diabet))
  end

  test "should show diabet" do
    get :show, :id => @diabet.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @diabet.to_param
    assert_response :success
  end

  test "should update diabet" do
    put :update, :id => @diabet.to_param, :diabet => @diabet.attributes
    assert_redirected_to diabet_path(assigns(:diabet))
  end

  test "should destroy diabet" do
    assert_difference('Diabet.count', -1) do
      delete :destroy, :id => @diabet.to_param
    end

    assert_redirected_to diabets_path
  end
end
