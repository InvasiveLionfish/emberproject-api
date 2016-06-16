class PickupSerializer < ActiveModel::Serializer
  attributes :id, :listing_id, :recipient_id
end
