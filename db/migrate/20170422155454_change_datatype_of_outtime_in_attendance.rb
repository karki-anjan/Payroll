class ChangeDatatypeOfOuttimeInAttendance < ActiveRecord::Migration[5.0]
  def up
    change_column :attendances, :outtime, :time
  end

  def down
    change_column :attendances, :outtime, :datetime
  end
end
