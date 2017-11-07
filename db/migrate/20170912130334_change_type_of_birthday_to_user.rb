class ChangeTypeOfBirthdayToUser < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :birthday, :string
  end
end
