class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :questions
      t.boolean :answers

      t.timestamps null: false
    end
  end
end
