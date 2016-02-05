class AddLibAndContoVoters < ActiveRecord::Migration
  def change
  	add_column :voters, :libVal, :integer
  	add_column :voters, :conVal, :integer
  end
end
