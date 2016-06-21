class DonorSerializer < UserSerializer
  has_many :listings
end
