class LogSql < ActiveRecord::Base
    self.table_name = 'log_sql'
    self.primary_key = :log_sql_id

end
