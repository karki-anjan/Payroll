class ChangeIntegerFormatInUsers < ActiveRecord::Migration[5.0]
  def up
    change_column :users, :phone_no, :string
  end

  def down
    change_column :users, :phone_no, :integer
  end
end
