class ApplicationMailer < ActionMailer::Base
  default from: 'Collin' + ' ' + ENV['EMAIL']
  layout 'mailer'
end
