class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :fio
      t.integer :district_id
      t.integer :card_num

      t.timestamps
    end
  end
end
