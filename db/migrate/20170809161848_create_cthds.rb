class CreateCthds < ActiveRecord::Migration[5.1]
  def change
    create_table :cthds do |t|
      t.integer :thanhtien
      t.integer :phivanchuyen

      t.timestamps
    end
  end
end
