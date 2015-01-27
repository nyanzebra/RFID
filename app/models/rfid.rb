class Rfid < ActiveRecord::Base
	belongs_to :item, :class_name => "Item", :foreign_key => "rfid_id"
	validates :item, presence: true
end
