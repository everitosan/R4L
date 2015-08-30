require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  test "group" do
    group = groups(:cyclists)
    assert group.valid?, "group is not valid"
  end
end
