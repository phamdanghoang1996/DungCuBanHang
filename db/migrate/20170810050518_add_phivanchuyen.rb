class AddPhivanchuyen < ActiveRecord::Migration[5.1]
  def change
    add_column :provinces, :phivanchuyen, :integer
  end
end
