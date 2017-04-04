class AppEmailMailer < ApplicationMailer
  default from: 'collinlshelby@gmail.com'

  def email(user)
    # @user = user
    mail(to: user, subject: 'hello this is a test')
  end

end
