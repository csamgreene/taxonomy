class Notifier < ActionMailer::Base
  
# ==================================================================
require 'tlsmail'
Net::SMTP.enable_tls(OpenSSL::SSL::VERIFY_NONE)
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => 'smtp.gmail.com',
  :port => 587,
  :tls => true,
  :domain => 'mail.google.com',  
  :authentication => :plain,
  :user_name => 'chrissamgreene@gmail.com',  
  :password => 'verdigmail'
}
# ==================================================================
  
  default :from => 'taxonomy@example.com'
     
    def newTerm()
      mail(:to => 'chris.greene@luxresearchinc.com', :subject => 'New taxonomy term submitted for review')
    end
end
