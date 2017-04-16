require 'test_helper'

class EmployeeMailerTest < ActionMailer::TestCase
  test "invitation_confirmation" do
    mail = EmployeeMailer.invitation_confirmation
    assert_equal "Invitation confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
