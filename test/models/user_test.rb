require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "validates user" do
    user = users(:Allan)
    assert user.valid?, "user is valid"
  end
end
