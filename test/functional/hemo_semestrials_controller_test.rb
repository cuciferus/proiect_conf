require 'test_helper'

class HemoSemestrialsControllerTest < ActionController::TestCase
  setup do
    @hemo_semestrial = hemo_semestrials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hemo_semestrials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hemo_semestrial" do
    assert_difference('HemoSemestrial.count') do
      post :create, :hemo_semestrial => @hemo_semestrial.attributes
    end

    assert_redirected_to hemo_semestrial_path(assigns(:hemo_semestrial))
  end

  test "should show hemo_semestrial" do
    get :show, :id => @hemo_semestrial.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @hemo_semestrial.to_param
    assert_response :success
  end

  test "should update hemo_semestrial" do
    put :update, :id => @hemo_semestrial.to_param, :hemo_semestrial => @hemo_semestrial.attributes
    assert_redirected_to hemo_semestrial_path(assigns(:hemo_semestrial))
  end

  test "should destroy hemo_semestrial" do
    assert_difference('HemoSemestrial.count', -1) do
      delete :destroy, :id => @hemo_semestrial.to_param
    end

    assert_redirected_to hemo_semestrials_path
  end
end
