class RemoveUserIdFromResponse < ActiveRecord::Migration[5.2]
  def change
    remove_index :responses, :question_id
    remove_column :responses, :question_id
  end
end
