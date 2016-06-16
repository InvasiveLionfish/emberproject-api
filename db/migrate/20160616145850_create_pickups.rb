class CreatePickups < ActiveRecord::Migration
  def change
    create_table :pickups do |t|
      t.integer :recipient_id
      t.integer :listing_id
      t.timestamps null: false
    end
  end
end
