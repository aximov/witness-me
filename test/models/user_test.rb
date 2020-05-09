require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should not save user without uid" do
    user = User.new
    assert_not user.save, "Saved the user without its uid"
  end
end
