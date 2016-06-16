class CreateDonorsTable < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :address
      t.string :description
      t.string :contact_info
    end
  end
end
