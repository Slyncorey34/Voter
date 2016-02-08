class AddVoteridAndAnswCols < ActiveRecord::Migration
  def change
  	add_column :quizzes, :answer1, :boolean
  	add_column :quizzes, :answer2, :boolean
  	add_column :quizzes, :answer3, :boolean
  	add_column :quizzes, :answer4, :boolean
  	add_column :quizzes, :answer5, :boolean
  	add_column :quizzes, :answer6, :boolean
  	add_column :quizzes, :answer7, :boolean
  	add_column :quizzes, :answer8, :boolean
  	add_column :quizzes, :answer9, :boolean
  	add_column :quizzes, :answer10, :boolean

  	add_reference(:quizzes, :voter, index: true, foreign_key: true)
  end
end

