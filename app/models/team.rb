class Team < ApplicationRecord
	has_many :players
	has_and_belongs_to_many :matches, join_table: 'matches_teams'
end
