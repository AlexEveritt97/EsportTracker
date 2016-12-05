class HomeController < ApplicationController
  def Home
  	@matches = Match.all
  	@teams = Team.where("rank <= 10")

  	# Get all players, sort by rating and then take the first 10 to display
  	@playersAll = Player.all
  	@playersSortedByRating = @playersAll.sort_by {|player| player[:rating]}.reverse!
  	@players = @playersSortedByRating.first(10)
  end
end
