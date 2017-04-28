class ChangeDatatypeInAttendance < ActiveRecord::Migration[5.0]
  def up
    change_column :attendances, :intime, :time
  end

  def down
    change_column :attendances, :intime, :datetime
  end
end
