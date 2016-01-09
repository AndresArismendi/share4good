class HasVehicle < ActiveRecord::Base
    self.table_name = 'has_vehicle'
    self.primary_key = :has_vehicle_id

    belongs_to :vehicle, :class_name => 'Vehicle', :foreign_key => :vehiculo_id
    belongs_to :user, :class_name => 'User', :foreign_key => :user_id
end
