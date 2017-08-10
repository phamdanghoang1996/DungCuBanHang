class CreateSanphams < ActiveRecord::Migration[5.1]
  def change
    create_table :sanphams do |t|
      t.string :tensanpham
      t.integer :gia
      t.string :mota
      t.integer :soluong
      t.string :gioithieu
      t.string :hinhanh
      t.datetime :ngaynhap

      t.timestamps
    end
  end
end
