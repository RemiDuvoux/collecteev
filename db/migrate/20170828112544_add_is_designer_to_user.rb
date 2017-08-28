class AddIsDesignerToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_designer, :integer, default: 0, null: false
  end
end
