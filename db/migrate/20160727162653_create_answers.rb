class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer :option_id
      t.integer :answer_sheet_id

      t.timestamps
    end
  end
end
