class AddListingIdToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_reference :favorites, :listing, foreign_key: true
  end
end
