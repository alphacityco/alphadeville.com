class ContactMailer < ActionMailer::Base
  
  def on_contact_us( sender_email, sender_message )
    @sender_message = sender_message
    mail(from: "[ADV CLIENT] <#{sender_email}>", :to => "alphadeville@gmail.com", 
      :subject => 'Sent using alphadeville.com')
  end

end