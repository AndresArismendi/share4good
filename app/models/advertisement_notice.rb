class AdvertisementNotice < ActiveRecord::Base
    self.table_name = 'advertisement_notice'
    self.primary_key = :notice_id

    belongs_to :client, :class_name => 'Client', :foreign_key => :client_id
end
