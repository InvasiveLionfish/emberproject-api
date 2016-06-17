class DropDonors < ActiveRecord::Migration
  def change
    drop_table :donors
  end
end
