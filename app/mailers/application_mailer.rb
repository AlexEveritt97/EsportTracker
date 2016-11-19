class ApplicationMailer < ActionMailer::Base
  default to: "info@EsportTracker.com", from: 'info@EsportTracker.com'
  layout 'mailer'
end
