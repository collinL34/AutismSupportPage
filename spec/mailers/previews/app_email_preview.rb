# Preview all emails at http://localhost:3000/rails/mailers/app_email
class AppEmailPreview < ActionMailer::Preview

  def email_preview
    AppEmailMailer.email('collinlshelby@gmail.com')
  end

end
