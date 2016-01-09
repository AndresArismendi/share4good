require 'test_helper'

class HasVehiclesControllerTest < ActionController::TestCase
  setup do
    @has_vehicle = has_vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:has_vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create has_vehicle" do
    assert_difference('HasVehicle.count') do
      post :create, has_vehicle: { user_id: @has_vehicle.user_id, vehiculo_id: @has_vehicle.vehiculo_id }
    end

    assert_redirected_to has_vehicle_path(assigns(:has_vehicle))
  end

  test "should show has_vehicle" do
    get :show, id: @has_vehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @has_vehicle
    assert_response :success
  end

  test "should update has_vehicle" do
    patch :update, id: @has_vehicle, has_vehicle: { user_id: @has_vehicle.user_id, vehiculo_id: @has_vehicle.vehiculo_id }
    assert_redirected_to has_vehicle_path(assigns(:has_vehicle))
  end

  test "should destroy has_vehicle" do
    assert_difference('HasVehicle.count', -1) do
      delete :destroy, id: @has_vehicle
    end

    assert_redirected_to has_vehicles_path
  end
end
