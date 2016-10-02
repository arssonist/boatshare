class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.reset_password_email.subject
  #
  def reset_password_email(user) #added the user parameter because sorcery sends this method a user as a param

    @user = User.find user.id
 @url  = edit_password_reset_url(@user.reset_password_token)
 mail(:to => user.email,
      :subject => "Your password has been reset")

  end
end
