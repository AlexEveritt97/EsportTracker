require 'test_helper'

class MatchTest < ActiveSupport::TestCase
	  
	test "should not save" do
		match = Match.new
		match.save

		assert_not match.valid?
	end

	test "should save" do
		match = Match.new
		match.teamA = "String"
		match.teamB = "String"
		match.teamAScore = 1
		match.teamBScore = 2
		match.date = 2016

		match.save

		assert match.valid?
	end
end
