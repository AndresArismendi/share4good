class Brand < ActiveRecord::Base
    self.table_name = 'brand'
    self.primary_key = :brand_id

    has_many :vehicles, :class_name => 'Vehicle', :foreign_key => :brand_id
end
