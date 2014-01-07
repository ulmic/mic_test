class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.integer :question_id
      t.string :text

      t.timestamps
    end
  end
end
