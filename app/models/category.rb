class Category < ActiveRecord::Base
    self.table_name = 'category'
    self.primary_key = :category_id

    has_many :users, :class_name => 'User', :foreign_key => :category_id
end
