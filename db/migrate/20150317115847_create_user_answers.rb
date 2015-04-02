class CreateUserAnswers < ActiveRecord::Migration
  def change
    create_table :user_answers do |t|
      t.integer :question_id
      t.string :answer_id
      t.string :content

      t.timestamps
    end
  end
end
