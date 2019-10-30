class CreateWashes < ActiveRecord::Migration[6.0]
  def change
    create_table :washes do |t|
      t.string :name
      t.string :color_code

      t.timestamps
    end
  end
end
