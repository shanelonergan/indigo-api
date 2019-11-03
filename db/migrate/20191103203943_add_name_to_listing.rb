class AddNameToListing < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :name, :string
  end
end
