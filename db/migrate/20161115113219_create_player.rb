class CreatePlayer < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
    	t.string :name
    	t.integer :rating
    	t.string :info
    end
  end
end
