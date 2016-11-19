class ContactMailer < ApplicationMailer

	def contact_email(email, message)
		@email = email
		@message = message

		mail cc: @email
	end
end
