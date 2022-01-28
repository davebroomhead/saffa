class CreateDams < ActiveRecord::Migration[5.2]
  def change
    create_table :dams do |t|
      t.string :location
      t.text :description
      t.text :photo
      t.text :health
      t.text :status
      t.string :owner

      t.timestamps
    end
  end
end
