class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :fname
      t.string :lname
      t.string :city
      t.string :state
      t.date :birthday
      t.string :party

      t.timestamps null: false
    end
  end
end
