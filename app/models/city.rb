class City < ActiveRecord::Base
    self.table_name = 'city'
    self.primary_key = :city_id

    belongs_to :region, :class_name => 'Region', :foreign_key => :region_id
    has_many :neighboorhoods, :class_name => 'Neighboorhood', :foreign_key => :city_id
end
