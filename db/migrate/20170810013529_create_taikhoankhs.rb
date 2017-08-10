class CreateTaikhoankhs < ActiveRecord::Migration[5.1]
  def change
    create_table :taikhoankhs do |t|
      t.string :tendangnhap
      t.string :matkhau

      t.timestamps
    end
  end
end
