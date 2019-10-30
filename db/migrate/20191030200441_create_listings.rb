class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.float :original_price
      t.float :current_price
      t.string :description
      t.integer :waist
      t.integer :length
      t.integer :weight
      t.bigint :wash_id
      t.bigint :mill_id
      t.bigint :category_id
      t.bigint :origin_id
      t.bigint :brand_id
      t.bigint :condition_id

      t.timestamps
    end
  end
end
