class CreateAnswerChoice < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choices do |t|
      t.integer :question_id
      t.integer :user_id
      t.string :text
    end
    add_index :answer_choices, :question_id
    add_index :answer_choices, :user_id
  end
end
