require 'test_helper'

class LogSqlsControllerTest < ActionController::TestCase
  setup do
    @log_sql = log_sqls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:log_sqls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create log_sql" do
    assert_difference('LogSql.count') do
      post :create, log_sql: { log_sql_dat_antes: @log_sql.log_sql_dat_antes, log_sql_dat_dsps: @log_sql.log_sql_dat_dsps, log_sql_ope_det: @log_sql.log_sql_ope_det, log_sql_operac: @log_sql.log_sql_operac, log_sql_table: @log_sql.log_sql_table, log_sql_tms: @log_sql.log_sql_tms, log_sql_user: @log_sql.log_sql_user }
    end

    assert_redirected_to log_sql_path(assigns(:log_sql))
  end

  test "should show log_sql" do
    get :show, id: @log_sql
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @log_sql
    assert_response :success
  end

  test "should update log_sql" do
    patch :update, id: @log_sql, log_sql: { log_sql_dat_antes: @log_sql.log_sql_dat_antes, log_sql_dat_dsps: @log_sql.log_sql_dat_dsps, log_sql_ope_det: @log_sql.log_sql_ope_det, log_sql_operac: @log_sql.log_sql_operac, log_sql_table: @log_sql.log_sql_table, log_sql_tms: @log_sql.log_sql_tms, log_sql_user: @log_sql.log_sql_user }
    assert_redirected_to log_sql_path(assigns(:log_sql))
  end

  test "should destroy log_sql" do
    assert_difference('LogSql.count', -1) do
      delete :destroy, id: @log_sql
    end

    assert_redirected_to log_sqls_path
  end
end
