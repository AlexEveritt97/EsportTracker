class ContactController < ApplicationController
  def contact
  end

  def request_contact
  	email = params[:email]
  	message = params[:message]

  	if email.blank?
  		flash[:alert] = "No email supplied"
  	else
  		ContactMailer.contact_email(email, message).deliver_now
  		
  	end

  	redirect_to root_path
  	

  end
end
