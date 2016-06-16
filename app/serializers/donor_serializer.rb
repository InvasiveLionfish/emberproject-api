class DonorSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :description, :contact_info
  has_many :listings
end
