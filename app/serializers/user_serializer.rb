class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :favorites

  def favorites
    self.object.favorites.map { |favorite| favorite.listing }
  end
end
