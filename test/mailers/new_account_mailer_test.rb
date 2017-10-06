require 'test_helper'

class NewAccountMailerTest < ActionMailer::TestCase

  def setup
    @user = users(:michael)
  end

  #test "submitted" do
   # mail = NewAccountMailer.submitted(@user)
   # assert_equal "Submitted", mail.subject
   # assert_equal ["to@example.org"], mail.to
   # assert_equal ["from@example.com"], mail.from
   # assert_match "Hi", mail.body.encoded
  #end

end
