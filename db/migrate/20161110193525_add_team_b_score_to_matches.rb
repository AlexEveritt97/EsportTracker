class AddTeamBScoreToMatches < ActiveRecord::Migration[5.0]
  def change
    add_column :matches, :TeamBScore, :String
  end
end
