require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
	setup do 
		@team = teams(:one)
	end

	

	test "should save" do
		player = Player.new
		player.name = "deeve"
		player.info = "myString"
		player.rating = 100
		player.team_id = @team.id
		player.save

		assert player.valid?
	end
end
