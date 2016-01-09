require 'test_helper'

class TripsControllerTest < ActionController::TestCase
  setup do
    @trip = trips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trip" do
    assert_difference('Trip.count') do
      post :create, trip: { nei_neighboorhood_id: @trip.nei_neighboorhood_id, neighboorhood_id: @trip.neighboorhood_id, tri_trip_id: @trip.tri_trip_id, trip_accomplished: @trip.trip_accomplished, trip_capacity: @trip.trip_capacity, trip_hour: @trip.trip_hour, trip_luggage: @trip.trip_luggage, trip_pet: @trip.trip_pet, trip_price: @trip.trip_price, trip_smoker: @trip.trip_smoker }
    end

    assert_redirected_to trip_path(assigns(:trip))
  end

  test "should show trip" do
    get :show, id: @trip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trip
    assert_response :success
  end

  test "should update trip" do
    patch :update, id: @trip, trip: { nei_neighboorhood_id: @trip.nei_neighboorhood_id, neighboorhood_id: @trip.neighboorhood_id, tri_trip_id: @trip.tri_trip_id, trip_accomplished: @trip.trip_accomplished, trip_capacity: @trip.trip_capacity, trip_hour: @trip.trip_hour, trip_luggage: @trip.trip_luggage, trip_pet: @trip.trip_pet, trip_price: @trip.trip_price, trip_smoker: @trip.trip_smoker }
    assert_redirected_to trip_path(assigns(:trip))
  end

  test "should destroy trip" do
    assert_difference('Trip.count', -1) do
      delete :destroy, id: @trip
    end

    assert_redirected_to trips_path
  end
end
