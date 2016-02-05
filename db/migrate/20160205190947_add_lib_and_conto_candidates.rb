class AddLibAndContoCandidates < ActiveRecord::Migration
  def change
  	add_column :candidates, :libVal, :integer
  	add_column :candidates, :conVal, :integer
  end
end
