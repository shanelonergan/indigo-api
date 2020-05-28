class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :url
  has_one :listing
end
