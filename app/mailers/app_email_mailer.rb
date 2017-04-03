class AppEmailMailer < ApplicationMailer
  default from: "rawnchychero@comcast.net" 

  def email(user)
    # @user = user
    mail(to: user, subject: 'hello this is a test')
  end

end
