class ContactMailer < ActionMailer::Base
    default to: 'daemon700@ukr.net'
    
    
def contact_email(name, email, body)
    @name = name
    @email= email
    @body = body
mail(from: email, subject: 'Contact from message')
end end