class HomeController < ApplicationController
  def Home
    ## Get and sort everything required to show the matches, teams and players
    ## on the home page

  	@matchesUnsort = Match.all
  	@matches = @matchesUnsort.sort_by {|match| match[:date]}.reverse!

  	@teamsUnsorted = Team.where("rank <= 10")
  	@teams = @teamsUnsorted.sort_by {|team| team[:rating]}

  	# Get all players, sort by rating and then take the first 10 to display
  	@playersAll = Player.all
  	@playersSortedByRating = @playersAll.sort_by {|player| player[:rating]}.reverse!
  	@players = @playersSortedByRating.first(10)
  end

  def contact
    
  end

  # method for the contact mailer
  def request_contact
    email = params[:email]
    message = params[:message]

    if email.blank?
      flash[:alert] = "No email supplied"
    else
      flash[:notice] =  " Email sent"
      ContactMailer.contact_email(email, message).deliver_now
      
    end

    redirect_to root_path
    

  end
end
