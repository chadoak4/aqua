require 'test_helper'

class BlogMailerTest < ActionMailer::TestCase
  test "new_blog" do
    mail = BlogMailer.new_blog
    assert_equal "New blog", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
