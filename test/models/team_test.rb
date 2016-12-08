require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  

  	test "should not save" do
  		team = Team.new
  		team.save

  		assert_not team.valid?
  	end

  	test "should save team" do
  		team = Team.new
  		team.name = "NiP"
  		team.info = "myString"
  		team.rank = 1
  		team.save

  		assert team.valid?
  	end
end
