class AddColumns < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :hoten, :string
    add_column :users, :tinh, :string
    add_column :users, :quan, :string
    add_column :users, :nha, :string
    add_column :users, :sodt, :string

    add_column :users, :checkthongtinkhuyemai, :integer
  end
end
