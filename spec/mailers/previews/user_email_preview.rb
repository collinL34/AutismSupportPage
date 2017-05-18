# Preview all emails at http://localhost:3000/rails/mailers/user_email
class UserEmailPreview < ActionMailer::Preview
  def sample_mail_preview
    UserEmail.welcome_email(User.last).deliver_now
  end
end
