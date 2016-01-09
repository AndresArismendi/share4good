require 'test_helper'

class NeighboorhoodsControllerTest < ActionController::TestCase
  setup do
    @neighboorhood = neighboorhoods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:neighboorhoods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create neighboorhood" do
    assert_difference('Neighboorhood.count') do
      post :create, neighboorhood: { city_id: @neighboorhood.city_id, neighboorhood_nombre: @neighboorhood.neighboorhood_nombre }
    end

    assert_redirected_to neighboorhood_path(assigns(:neighboorhood))
  end

  test "should show neighboorhood" do
    get :show, id: @neighboorhood
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @neighboorhood
    assert_response :success
  end

  test "should update neighboorhood" do
    patch :update, id: @neighboorhood, neighboorhood: { city_id: @neighboorhood.city_id, neighboorhood_nombre: @neighboorhood.neighboorhood_nombre }
    assert_redirected_to neighboorhood_path(assigns(:neighboorhood))
  end

  test "should destroy neighboorhood" do
    assert_difference('Neighboorhood.count', -1) do
      delete :destroy, id: @neighboorhood
    end

    assert_redirected_to neighboorhoods_path
  end
end
