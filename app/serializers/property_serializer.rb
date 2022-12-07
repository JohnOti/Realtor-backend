class PropertySerializer < ActiveModel::Serializer
  attributes :id, :name, :value, :location, :img_url, :description
  belongs_to :user
end
