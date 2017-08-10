class AddColumnKhachhangs < ActiveRecord::Migration[5.1]
  def change
    add_column  :khachhangs, :id_tinh, :string
    add_column  :khachhangs, :id_quan, :string
    add_column  :khachhangs, :sonha, :string
  end
end
