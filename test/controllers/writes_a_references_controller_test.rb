require 'test_helper'

class WritesAReferencesControllerTest < ActionController::TestCase
  setup do
    @writes_a_reference = writes_a_references(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:writes_a_references)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create writes_a_reference" do
    assert_difference('WritesAReference.count') do
      post :create, writes_a_reference: { is_driver: @writes_a_reference.is_driver, reference_id: @writes_a_reference.reference_id, trip_id: @writes_a_reference.trip_id, user_id: @writes_a_reference.user_id }
    end

    assert_redirected_to writes_a_reference_path(assigns(:writes_a_reference))
  end

  test "should show writes_a_reference" do
    get :show, id: @writes_a_reference
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @writes_a_reference
    assert_response :success
  end

  test "should update writes_a_reference" do
    patch :update, id: @writes_a_reference, writes_a_reference: { is_driver: @writes_a_reference.is_driver, reference_id: @writes_a_reference.reference_id, trip_id: @writes_a_reference.trip_id, user_id: @writes_a_reference.user_id }
    assert_redirected_to writes_a_reference_path(assigns(:writes_a_reference))
  end

  test "should destroy writes_a_reference" do
    assert_difference('WritesAReference.count', -1) do
      delete :destroy, id: @writes_a_reference
    end

    assert_redirected_to writes_a_references_path
  end
end
