class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.integer :lib_points
      t.integer :con_points

      t.timestamps null: false
    end
  end
end
