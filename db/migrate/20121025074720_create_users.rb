class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fio
      t.string :department
      t.integer :card_num

      t.timestamps
    end
  end
end
