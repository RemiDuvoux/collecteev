class RenameProductsToCampaigns < ActiveRecord::Migration[5.0]
  def change
    rename_table :products, :campaigns
  end
end
