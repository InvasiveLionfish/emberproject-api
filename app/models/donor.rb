class Donor < ActiveRecord::Base
  has_many :listings
  has_many :pickups, through: :listings
end
