class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
