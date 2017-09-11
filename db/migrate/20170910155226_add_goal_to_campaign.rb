class AddGoalToCampaign < ActiveRecord::Migration[5.0]
  def change
    add_column :campaigns, :goal, :integer, default: 50, null: false
  end
end
