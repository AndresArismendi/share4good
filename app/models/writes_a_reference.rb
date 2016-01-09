class WritesAReference < ActiveRecord::Base
    self.table_name = 'writes_a_reference'
    self.primary_key = :write_id

    belongs_to :user, :class_name => 'User', :foreign_key => :user_id
    belongs_to :trip, :class_name => 'Trip', :foreign_key => :trip_id
    belongs_to :reference, :class_name => 'Reference', :foreign_key => :reference_id
end
