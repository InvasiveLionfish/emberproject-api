class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :donor_id
      t.datetime :pickup_time
      t.string :description
      t.timestamps null: false
    end
  end
end
