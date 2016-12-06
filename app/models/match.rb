class Match < ApplicationRecord
	has_and_belongs_to_many :teams, join_table: 'matches_teams'
	validates :teamA, presence: true
	validates :teamB, presence: true
end
