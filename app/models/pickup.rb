class Pickup < ActiveRecord::Base
  belongs_to :recipient
  belongs_to :listing
end
