require 'test_helper'

class StatisticsControllerTest < ActionController::TestCase
  setup do
    @controller = API::StatisticsController.new
    @request.headers["Accept"] = "application/json"
    @statistic = statistics(:allan_statistic)
    @user = users(:Allan)
    @goal_category = goal_categories(:weight)
  end

  test "gets all statisctics" do
    get :index

    assert_equal Mime::JSON, response.content_type
    assert_equal 200, response.status

  end

  test "create a statistic" do
    param = {
      statistic: {
        user_id: @user.id,
        goal_category_id: @goal_category.id,
        quantity: 50
      }
    }

    post :create,
    param

    assert_equal Mime::JSON, response.content_type
    assert_equal 201, response.status
  end

  test "get a statistic" do
    get :show,
    :id => @statistic.id

    statisticResponse = json(response.body)
    assert_equal 200, response.status
    assert_equal @statistic.quantity, statisticResponse[:quantity]
    assert_equal Mime::JSON, response.content_type
  end

  test "update a statistic" do
    put :update,
    :id => @statistic.id,
    :statistic => {:quantity => 40 }

    assert_equal 200, response.status
    assert_equal 40, @statistic.reload.quantity
  end

  test "delete a statistic" do
    delete :destroy,
    :id => @statistic

    assert_equal 204, response.status
  end
end
