require 'test_helper'

class TweetTest < ActiveSupport::TestCase
  test "should not save tweet without URL" do
    tweet = Tweet.new
    assert_not tweet.save, "Saved the tweet without an URL"
  end
end
