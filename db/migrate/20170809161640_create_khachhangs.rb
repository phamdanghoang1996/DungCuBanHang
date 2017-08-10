class CreateKhachhangs < ActiveRecord::Migration[5.1]
  def change
    create_table :khachhangs do |t|
      t.string :name
      t.string :sodienthoai
      t.string :string
      t.string :email
      t.string :diachi

      t.timestamps
    end
  end
end
