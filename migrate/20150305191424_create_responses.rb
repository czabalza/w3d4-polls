class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :answer_choice_id
      t.integer :user_id
      t.integer :question_id
    end

    add_index :responses, :user_id
    add_index :responses, :question_id
  end
end
