class RecipientSerializer < UserSerializer
  has_many :pickups
end
