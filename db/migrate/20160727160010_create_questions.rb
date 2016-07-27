class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.integer :creator_id
      t.integer :level
      t.string :type
      t.string :photo
      t.string :audio
      t.text :content
      t.integer :correct_option

      t.timestamps
    end
  end
end
