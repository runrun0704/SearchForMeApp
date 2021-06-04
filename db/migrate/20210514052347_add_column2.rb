class AddColumn2 < ActiveRecord::Migration[5.2]
  def change
    add_column :graphs, :pass, :string
  end
end
