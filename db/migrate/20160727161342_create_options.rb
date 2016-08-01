class CreateOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :options do |t|
      t.integer :sub_question_id
      t.text :content
      t.boolean :correct

      t.timestamps
    end
  end
end
