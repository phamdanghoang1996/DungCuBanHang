class CreateLoaisanphams < ActiveRecord::Migration[5.1]
  def change
    create_table :loaisanphams do |t|
      t.string :tenloai

      t.timestamps
    end
  end
end
