class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.bigint :buyer_id
      t.bigint :seller_id
      # t.references :listing, null: false, foreign_key: true
      t.float :final_price

      t.timestamps
    end
  end
end
