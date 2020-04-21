class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials.action_mailer[:email]
  layout 'mailer'
end
