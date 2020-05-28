class AddSizeToListing < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :size, :string
  end
end
