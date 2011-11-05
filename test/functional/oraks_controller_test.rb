require 'test_helper'

class OraksControllerTest < ActionController::TestCase
  setup do
    @orak = oraks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oraks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orak" do
    assert_difference('Orak.count') do
      post :create, :orak => @orak.attributes
    end

    assert_redirected_to orak_path(assigns(:orak))
  end

  test "should show orak" do
    get :show, :id => @orak.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @orak.to_param
    assert_response :success
  end

  test "should update orak" do
    put :update, :id => @orak.to_param, :orak => @orak.attributes
    assert_redirected_to orak_path(assigns(:orak))
  end

  test "should destroy orak" do
    assert_difference('Orak.count', -1) do
      delete :destroy, :id => @orak.to_param
    end

    assert_redirected_to oraks_path
  end
end
