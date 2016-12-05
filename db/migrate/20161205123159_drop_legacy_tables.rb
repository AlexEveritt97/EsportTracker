class DropLegacyTables < ActiveRecord::Migration[5.0]
  def change

  	drop_table :matches_teams
  end
end
