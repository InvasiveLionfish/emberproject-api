class ListingSerializer < ActiveModel::Serializer
  attributes :id, :pickup_time, :description, :donor_id
  belongs_to :donor
end
