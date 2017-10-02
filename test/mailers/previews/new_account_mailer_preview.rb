# Preview all emails at http://localhost:3000/rails/mailers/new_account_mailer
class NewAccountMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/new_account_mailer/submitted
  def submitted
    NewAccountMailer.submitted 'nick'
  end

end
