class CreatePoll < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.integer :author_id
      t.string :title
    end
    add_index :polls, :author_id
  end
end
