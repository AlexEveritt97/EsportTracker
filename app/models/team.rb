class Team < ApplicationRecord
	has_many :players
	has_and_belongs_to_many :matches, join_table: 'matches_teams'
	validates :name, presence: true
	validates :info, presence: true
	validates :rank, presence: true
	validates :rank, numericality: { greater_than_or_equal_to: 0}
end
