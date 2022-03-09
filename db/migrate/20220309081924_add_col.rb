class AddCol < ActiveRecord::Migration[5.2]
  def change
    add_column :data, :id_pass, :string
  end
end
