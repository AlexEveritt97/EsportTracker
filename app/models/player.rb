class Player < ApplicationRecord
	belongs_to :team
	validates :name, presence: true
	validates :rating, presence: true
	validates :rating, numericality: { greater_than_or_equal_to: 0}
	validates :info, presence: true
	validate  :team_player_count

	private

	## This method will check if the chosen team already has 5 players, and prevent
	## the player from being created if it does.
	def team_player_count
		if team.players.size >= 5
			errors.add(:team, "error, team already has 5 players")
		end
	end
end
