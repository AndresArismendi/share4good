require 'test_helper'

class UsuarioSegurosControllerTest < ActionController::TestCase
  setup do
    @usuario_seguro = usuario_seguros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuario_seguros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario_seguro" do
    assert_difference('UsuarioSeguro.count') do
      post :create, usuario_seguro: { user_id: @usuario_seguro.user_id, usuario_seguro_date: @usuario_seguro.usuario_seguro_date, usuario_seguro_enabled: @usuario_seguro.usuario_seguro_enabled }
    end

    assert_redirected_to usuario_seguro_path(assigns(:usuario_seguro))
  end

  test "should show usuario_seguro" do
    get :show, id: @usuario_seguro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario_seguro
    assert_response :success
  end

  test "should update usuario_seguro" do
    patch :update, id: @usuario_seguro, usuario_seguro: { user_id: @usuario_seguro.user_id, usuario_seguro_date: @usuario_seguro.usuario_seguro_date, usuario_seguro_enabled: @usuario_seguro.usuario_seguro_enabled }
    assert_redirected_to usuario_seguro_path(assigns(:usuario_seguro))
  end

  test "should destroy usuario_seguro" do
    assert_difference('UsuarioSeguro.count', -1) do
      delete :destroy, id: @usuario_seguro
    end

    assert_redirected_to usuario_seguros_path
  end
end
