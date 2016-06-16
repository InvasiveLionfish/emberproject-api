class Recipient < ActiveRecord::Base
  has_many :pickups
  has_many :listings, through: :pickups
end
