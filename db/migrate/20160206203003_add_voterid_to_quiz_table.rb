class AddVoteridToQuizTable < ActiveRecord::Migration
  def change
  	add_column :quizzes, :voter_id, :interger 
  end
end
