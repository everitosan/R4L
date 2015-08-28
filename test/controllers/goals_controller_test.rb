require 'test_helper'

class GoalsControllerTest < ActionController::TestCase
  setup do
    @controller = API::GoalsController.new
    @request.headers["Accept"] = "application/json"
    @goal = goals(:allan_goal)
    @user = users(:Allan)
    @goal_category = goal_categories(:weight)
  end

  test "gets all goals" do
    get :index

    assert_equal Mime::JSON, response.content_type
    assert_equal 200, response.status

  end

  test "create a goal" do
    param = {
      goal: {
        user_id: @user.id,
        goal_category_id: @goal_category.id,
        start: 50,
        current: 40,
        desire: 10
      }
    }

    post :create,
    param

    assert_equal Mime::JSON, response.content_type
    assert_equal 201, response.status
  end

  test "get a goal" do
    get :show,
    :id => @goal.id

    statisticResponse = json(response.body)
    assert_equal 200, response.status
    assert_equal @goal.start, statisticResponse[:start]
    assert_equal Mime::JSON, response.content_type
  end

  test "update a goal" do
    put :update,
    :id => @goal.id,
    :goal => {:start => 40 }

    assert_equal 200, response.status
    assert_equal 40, @goal.reload.start
  end

  test "delete a goal" do
    delete :destroy,
    :id => @goal.id

    assert_equal 204, response.status
  end
end
