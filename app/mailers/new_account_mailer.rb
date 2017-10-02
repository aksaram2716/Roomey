class NewAccountMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.new_account_mailer.submitted.subject
  #
  def submitted(comment)
    @comment = comment

    mail to: "schnei54@purdue.edu"
  end
end
