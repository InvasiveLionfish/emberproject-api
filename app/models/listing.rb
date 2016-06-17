class Listing < ActiveRecord::Base
  belongs_to :donor
  has_one :pickup
end
