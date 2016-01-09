class Reference < ActiveRecord::Base
    self.table_name = 'reference'
    self.primary_key = :reference_id

    has_many :writes_a_references, :class_name => 'WritesAReference', :foreign_key => :reference_id
end
