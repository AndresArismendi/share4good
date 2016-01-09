json.array!(@log_sqls) do |log_sql|
  json.extract! log_sql, :id, :log_sql_tms, :log_sql_table, :log_sql_operac, :log_sql_user, :log_sql_dat_antes, :log_sql_dat_dsps, :log_sql_ope_det
  json.url log_sql_url(log_sql, format: :json)
end
