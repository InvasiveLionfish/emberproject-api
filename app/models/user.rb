class User < ActiveRecord::Base
  has_many :listings, :foreign_key => "donor_id"
  has_many :pickups, :foreign_key => "recipient_id"
end
