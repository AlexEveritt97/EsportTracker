class AddToDb < ActiveRecord::Migration[5.0]
  def change
  	change_table :players do |t|
  		t.belongs_to :team, index: true, foreign_key: true
  	end

  end
end
