class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :description
      t.string :address
      t.string :phone_number 
      t.timestamps null: false
    end
  end
end
