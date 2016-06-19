class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone_number, :description, :type
end
