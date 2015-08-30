require 'test_helper'

class GoalTest < ActiveSupport::TestCase
  test "goal" do
    goal = goals(:allan_goal)
    assert goal.valid?, "goal is not valid"
  end
end
