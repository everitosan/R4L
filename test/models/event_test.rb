require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "event" do
    event = events(:first_party)
    assert event.valid?, "event is not valid"
  end
end
