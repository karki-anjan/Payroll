class CreateSalaries < ActiveRecord::Migration[5.0]
  def change
    create_table :salaries do |t|
      t.decimal :tax
      t.decimal :vat
      t.decimal :total

      t.timestamps
    end
  end
end
