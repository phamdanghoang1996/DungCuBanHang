class AddReferencesToSanpham < ActiveRecord::Migration[5.1]
  def change
    add_reference :sanphams, :loaisanpham, foreign_key: true
  end
end
