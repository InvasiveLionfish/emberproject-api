class Listing < ActiveRecord::Base
  belongs_to :donor
  has_one :pickup
  has_one :recipient, through: :pickup
end
