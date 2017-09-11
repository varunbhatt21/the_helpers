class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.new_booking.subject
  #
  def new_booking(booking)
    @booking = booking

    mail to: @booking.email,
         subject: "New booking for #{@booking.name}"
  end
end
