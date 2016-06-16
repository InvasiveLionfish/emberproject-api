class Listing < ActiveRecord::Base
  belongs_to :donor, :class_name => "User"
  has_one :pickup
end
