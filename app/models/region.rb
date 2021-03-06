class Region < ActiveRecord::Base
    self.table_name = 'region'
    self.primary_key = :region_id

    has_many :cities, :class_name => 'City', :foreign_key => :region_id
end
