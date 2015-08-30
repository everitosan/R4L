require 'test_helper'

class GoalCategoryTest < ActiveSupport::TestCase
  test "goal category" do
    goal_category = goal_categories(:weight)
    assert goal_category.valid?, "goal category invalid"
  end
end
