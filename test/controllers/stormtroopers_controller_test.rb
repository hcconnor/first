require 'test_helper'

class StormtroopersControllerTest < ActionController::TestCase
  setup do
    @stormtrooper = stormtroopers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stormtroopers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stormtrooper" do
    assert_difference('Stormtrooper.count') do
      post :create, stormtrooper: { name: @stormtrooper.name, unit: @stormtrooper.unit }
    end

    assert_redirected_to stormtrooper_path(assigns(:stormtrooper))
  end

  test "should show stormtrooper" do
    get :show, id: @stormtrooper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stormtrooper
    assert_response :success
  end

  test "should update stormtrooper" do
    patch :update, id: @stormtrooper, stormtrooper: { name: @stormtrooper.name, unit: @stormtrooper.unit }
    assert_redirected_to stormtrooper_path(assigns(:stormtrooper))
  end

  test "should destroy stormtrooper" do
    assert_difference('Stormtrooper.count', -1) do
      delete :destroy, id: @stormtrooper
    end

    assert_redirected_to stormtroopers_path
  end
end
