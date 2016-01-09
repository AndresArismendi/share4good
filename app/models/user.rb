class User < ActiveRecord::Base
    self.table_name = 'USER'
    self.primary_key = :user_id

    has_many :has_vehicles, :class_name => 'HasVehicle', :foreign_key => :user_id
    has_many :suggestions, :class_name => 'Suggestion', :foreign_key => :user_id
    belongs_to :category, :class_name => 'Category', :foreign_key => :category_id
    has_many :usuario_seguros, :class_name => 'UsuarioSeguro', :foreign_key => :user_id
    has_many :writes_a_references, :class_name => 'WritesAReference', :foreign_key => :user_id
end
