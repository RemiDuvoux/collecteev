class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.date :start_date
      t.date :end_date
      t.references :product

      t.timestamps
    end
  end
end