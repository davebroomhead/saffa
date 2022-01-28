class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :membership
      t.string :phone
      t.string :car_reg

      t.timestamps
    end
  end
end
