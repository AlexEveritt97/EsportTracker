class CreateJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :teams, :matches do |t|
       t.index [:team_id, :match_id]
       t.index [:match_id, :team_id]
    end
  end
end
