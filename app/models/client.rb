class Client < ActiveRecord::Base
    self.table_name = 'client'
    self.primary_key = :client_id

    has_many :advertisement_notices, :class_name => 'AdvertisementNotice', :foreign_key => :client_id
end
