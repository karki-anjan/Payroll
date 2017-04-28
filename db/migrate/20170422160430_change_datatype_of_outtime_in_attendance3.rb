class ChangeDatatypeOfOuttimeInAttendance3 < ActiveRecord::Migration[5.0]
  def up
    change_column :attendances, :outtime, :string
  end

  def down
    change_column :attendances, :outtime, :time
  end
end
