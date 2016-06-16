class CreateRecipientsTable < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :description 
      t.string :contact_info
    end
  end
end
