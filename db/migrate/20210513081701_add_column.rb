class AddColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :graphs, :age, :integer
    add_column :graphs, :happy, :integer
    add_column :graphs, :comment, :string
  end
end
