class Neighboorhood < ActiveRecord::Base
    self.table_name = 'neighboorhood'
    self.primary_key = :neighboorhood_id

    belongs_to :city, :class_name => 'City', :foreign_key => :city_id
    has_many :trips, :class_name => 'Trip', :foreign_key => :neighboorhood_id
    has_many :trips, :class_name => 'Trip'
end
