class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
    	t.string :answer1
    	t.string :answer2
    	t.string :answer3
    	t.string :answer4
    	t.string :answer5
    	t.string :answer6
    	t.string :answer7
    	t.string :answer8
    	t.string :answer9
    	t.string :answer10
    	t.integer :voter_id
    end
  end
end
