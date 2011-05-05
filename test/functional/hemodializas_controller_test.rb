require 'test_helper'

class HemodializasControllerTest < ActionController::TestCase
  setup do
    @hemodializa = hemodializas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hemodializas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hemodializa" do
    assert_difference('Hemodializa.count') do
      post :create, :hemodializa => @hemodializa.attributes
    end

    assert_redirected_to hemodializa_path(assigns(:hemodializa))
  end

  test "should show hemodializa" do
    get :show, :id => @hemodializa.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @hemodializa.to_param
    assert_response :success
  end

  test "should update hemodializa" do
    put :update, :id => @hemodializa.to_param, :hemodializa => @hemodializa.attributes
    assert_redirected_to hemodializa_path(assigns(:hemodializa))
  end

  test "should destroy hemodializa" do
    assert_difference('Hemodializa.count', -1) do
      delete :destroy, :id => @hemodializa.to_param
    end

    assert_redirected_to hemodializas_path
  end
end
