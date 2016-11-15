class DropTablePlayers < ActiveRecord::Migration[5.0]
  def change
  	drop_table :players
  end
end
