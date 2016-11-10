class AddTeamAScoreToMatches < ActiveRecord::Migration[5.0]
  def change
    add_column :matches, :TeamAscore, :String
  end
end
