require 'test_helper'

class ContactusMailerTest < ActionMailer::TestCase
  test "new_contactus" do
    mail = ContactusMailer.new_contactus
    assert_equal "New contactus", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
