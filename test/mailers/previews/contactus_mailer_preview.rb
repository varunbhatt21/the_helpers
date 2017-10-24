# Preview all emails at http://localhost:3000/rails/mailers/contactus_mailer
class ContactusMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contactus_mailer/new_contactus
  def new_contactus
    contactus = HelperRequest.new
    ContactusMailer.new_contactus(contactus)
  end

end
