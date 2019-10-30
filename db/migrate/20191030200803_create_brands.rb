class CreateBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :location
      t.string :bio
      t.integer :year_founded

      t.timestamps
    end
  end
end
