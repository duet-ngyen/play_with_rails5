class CreateSubQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_questions do |t|
      t.integer :question_id
      t.text :content

      t.timestamps
    end
  end
end
