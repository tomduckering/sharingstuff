require 'test_helper'

class LendablesControllerTest < ActionController::TestCase
  setup do
    @lendable = lendables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lendables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lendable" do
    assert_difference('Lendable.count') do
      post :create, :lendable => @lendable.attributes
    end

    assert_redirected_to lendable_path(assigns(:lendable))
  end

  test "should show lendable" do
    get :show, :id => @lendable.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lendable.to_param
    assert_response :success
  end

  test "should update lendable" do
    put :update, :id => @lendable.to_param, :lendable => @lendable.attributes
    assert_redirected_to lendable_path(assigns(:lendable))
  end

  test "should destroy lendable" do
    assert_difference('Lendable.count', -1) do
      delete :destroy, :id => @lendable.to_param
    end

    assert_redirected_to lendables_path
  end
end
