class CreateHoadons < ActiveRecord::Migration[5.1]
  def change
    create_table :hoadons do |t|
      t.integer :soluong

      t.timestamps
    end
  end
end
