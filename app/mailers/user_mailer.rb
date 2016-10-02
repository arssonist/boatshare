class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.reset_password_email.subject
  #
  def reset_password_email(user) #added the user parameter because sorcery sends this method a user as a param 
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
