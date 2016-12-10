class Team < ApplicationRecord
	has_many :players
	has_and_belongs_to_many :matches, join_table: 'matches_teams'
	validates :name, presence: true
	validates :info, presence: true
	validates :rank, presence: true
	validates :rank, numericality: { greater_than_or_equal_to: 0}

	## search method, selects teams where name or rank is like search input
	## also uses join so you can search for a player name and it will bring up their team
	def self.search(input)
		Team.joins(:players).where('players.name LIKE :input OR teams.name LIKE :input OR teams.rank LIKE :input', input: "%#{input}%")
	end
	
end
