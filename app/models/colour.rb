class Colour < ActiveRecord::Base
    self.table_name = 'colour'
    self.primary_key = :colour_id

    has_many :vehicles, :class_name => 'Vehicle', :foreign_key => :colour_id
end
