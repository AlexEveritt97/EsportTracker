class AddToTeams < ActiveRecord::Migration[5.0]
  def change
  	change_table :teams do |t|
  		t.integer :rank
  	end
  end
end
