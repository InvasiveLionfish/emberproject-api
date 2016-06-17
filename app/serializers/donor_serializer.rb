class DonorSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :description, :phone_number
  has_many :listings
end
