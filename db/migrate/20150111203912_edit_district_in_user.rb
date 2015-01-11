class EditDistrictInUser < ActiveRecord::Migration
  def change
    remove_column :users, :district_id
    add_column :users, :district, :text
  end
end
