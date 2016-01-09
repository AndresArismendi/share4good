class Trip < ActiveRecord::Base
    self.table_name = 'trip'
    self.primary_key = :trip_id

    belongs_to :neighboorhood, :class_name => 'Neighboorhood', :foreign_key => :neighboorhood_id
    belongs_to :neighboorhood, :class_name => 'Neighboorhood', :foreign_key => :nei_neighboorhood_id
    belongs_to :trip, :class_name => 'Trip', :foreign_key => :tri_trip_id
    has_many :writes_a_references, :class_name => 'WritesAReference', :foreign_key => :trip_id
end
