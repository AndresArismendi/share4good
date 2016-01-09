class Suggestion < ActiveRecord::Base
    self.table_name = 'suggestion'
    self.primary_key = :suggestion_id

    belongs_to :user, :class_name => 'User', :foreign_key => :user_id
end
