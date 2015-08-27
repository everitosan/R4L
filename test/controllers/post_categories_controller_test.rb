require 'test_helper'

class PostCategoriesControllerTest < ActionController::TestCase
  setup do
    @controller = API::PostCategoriesController.new
    @request.headers["Accept"] = "application/json"
    @post_category = post_categories(:health)
  end

  test "create a post_ category" do
    param = {
      post_category: {
        name: "excercise"
      }
    }

    post :create,
    param

    assert_equal 201, response.status
  end

  test "get a post category" do
    get :show,
    :id => @post_category.id

    assert_equal 200, response.status
    assert_equal @post_category.name, @post_category.reload.name
  end

  test "update a post category" do
    put :update,
    :id => @post_category.id,
    :post_category => {:name => "otro" }

    assert_equal 200, response.status
    assert_equal "otro", @post_category.reload.name
  end

  test "delete a post category" do
    delete :destroy,
    :id => @post_category

    assert_equal 204, response.status
  end
end
