class NewAccountMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.new_account_mailer.submitted.subject
  #

  default :from => "roomeyApp@gmail.com"

  def submitted(user)
    mail(:to => user.email, :subject => "Registered")
  end
end
