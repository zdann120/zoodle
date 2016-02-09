require 'test_helper'

class PollMailerTest < ActionMailer::TestCase
  test "invite" do
    mail = PollMailer.invite
    assert_equal "Invite", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "choose_final" do
    mail = PollMailer.choose_final
    assert_equal "Choose final", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
