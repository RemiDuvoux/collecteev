class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :price
      t.text :product_desc
      t.string :product_type

      t.timestamps
    end
  end
end
