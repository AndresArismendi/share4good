class UsuarioSeguro < ActiveRecord::Base
    self.table_name = 'usuario_seguro'
    self.primary_key = :usuario_seguro_id

    belongs_to :user, :class_name => 'User', :foreign_key => :user_id
end
