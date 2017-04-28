class ChangeDatatypeOfOuttimeInAttendance2 < ActiveRecord::Migration[5.0]
  def up
    change_column :attendances, :intime, :string
  end

  def down
    change_column :attendances, :intime, :time
  end
end
