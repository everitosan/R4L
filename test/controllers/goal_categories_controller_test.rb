require 'test_helper'

class GoalCategoriesControllerTest < ActionController::TestCase
  setup do
    @controller = API::GoalCategoriesController.new
    @request.headers["Accept"] = "application/json"
    @goal_category = goal_categories(:weight)
  end

  test "create a goal category" do
    param = {
      goal_category: {
        name: "excercise"
      }
    }

    post :create,
    param

    assert_equal 201, response.status
  end

  test "get a goal category" do
    get :show,
    :id => @goal_category.id

    assert_equal 200, response.status
  end

  test "update a post category" do
    put :update,
    :id => @goal_category.id,
    :goal_category => {:name => "otro" }

    assert_equal 200, response.status
    assert_equal "otro", @goal_category.reload.name
  end

  test "delete a post category" do
    delete :destroy,
    :id => @goal_category

    assert_equal 204, response.status
  end
end
