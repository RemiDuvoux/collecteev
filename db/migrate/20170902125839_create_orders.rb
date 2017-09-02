class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :campaign, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :status
      t.string :street_name
      t.string :zip_code
      t.string :city_name
      t.decimal :shipping_fee

      t.timestamps
    end
  end
end
