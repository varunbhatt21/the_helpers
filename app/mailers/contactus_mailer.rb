class ContactusMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contactus_mailer.new_contactus.subject
  #
  def new_contactus(contactus)
    @contactus = contactus

    mail to: @contactus.cemail,
         subject: "ApnaHelper Query Details from #{@contactus.fname}"
  end
end
