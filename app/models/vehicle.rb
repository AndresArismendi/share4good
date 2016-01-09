class Vehicle < ActiveRecord::Base
    self.table_name = 'vehicle'
    self.primary_key = :vehiculo_id

    has_many :has_vehicles, :class_name => 'HasVehicle', :foreign_key => :vehiculo_id
    belongs_to :colour, :class_name => 'Colour', :foreign_key => :colour_id
    belongs_to :brand, :class_name => 'Brand', :foreign_key => :brand_id
end
