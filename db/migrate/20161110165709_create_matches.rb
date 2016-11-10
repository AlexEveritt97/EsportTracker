class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.string :teamA
      t.string :teamB
      t.date :date
      t.string :info

      t.timestamps
    end
  end
end
