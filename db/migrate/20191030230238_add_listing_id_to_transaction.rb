class AddListingIdToTransaction < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :listing_id, :bigint
  end
end
