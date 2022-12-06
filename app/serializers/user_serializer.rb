class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :location, :phone_number, :professional_status
  has_many :properties
end
