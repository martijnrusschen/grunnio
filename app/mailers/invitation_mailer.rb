class InvitationMailer < ActionMailer::Base
  default from: 'team@grunn.io', subject: 'Nieuws van Grunn.io'
  
  def invite(account)
    @account = account
    @url = "http://example.com/login"
    attachments.inline['logo.png'] = File.read("#{Rails.root}/app/assets/images/emails/logo.png")
    mail to: account.email
  end
    
  def welcome(account)
    @account = account
    mail to: account.email, subject: 'Welkom op Grunn.io!'
  end
  
end
