class AddNameToDams < ActiveRecord::Migration[5.2]
  def change
    add_column :dams, :name, :string
  end
end
