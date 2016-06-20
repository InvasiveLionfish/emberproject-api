class ListingSerializer < ActiveModel::Serializer
  attributes :id, :pickup_time, :description
  belongs_to :donor
  has_one :pickup
end
