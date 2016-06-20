class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :address, :type, :phone_number, :description
end
