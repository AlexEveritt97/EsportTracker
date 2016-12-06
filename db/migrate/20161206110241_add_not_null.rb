class AddNotNull < ActiveRecord::Migration[5.0]
  def change
  	change_column :matches, :teamAScore, :integer, :default => 0, :null => false
  	change_column :matches, :teamBScore, :integer, :default => 0, :null => false

  	change_column :players, :rating, :integer, :default => 0, :null => false

  	change_column :teams, :rank, :integer, :default => 100, :null => false
  end
end
