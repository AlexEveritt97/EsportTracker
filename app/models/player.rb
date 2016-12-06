class Player < ApplicationRecord
	belongs_to :team
	validates :name, presence: true
	validates :rating, presence: true
	validates :rating, numericality: { greater_than_or_equal_to: 0}
	validates :info, presence: true
end
