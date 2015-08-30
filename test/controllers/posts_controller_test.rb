require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @controller = API::PostsController.new
    @request.headers["Accept"] = "application/json"

    @user = users(:Allan)
    @post_context = post_contexts(:profile)
    @post_category = post_categories(:health)
    @postF = posts(:Allan_post)
  end

  test "get all posts" do
    get :index

    assert 200, response.status
  end

  test "create a new post" do
    params = {
      post: {
        user_id: @user.id,
        text: "Es mi post",
        post_context_id: @post_context.id,
        contextId: 543,
        post_category_id: @post_category.id,
        image: "some image",
        video: "some video"
      }
    }

    post :create,
          params

    assert_equal 201, response.status

  end

  test "get a post" do
    get :show,
    :id => @postF.id

    assert_equal 200, response.status
  end

  test "update a post" do

    put :update,
    :id => @postF.id,
    :post => { :text => 'nocierto'}

    assert_equal 'nocierto', @postF.reload.text
    assert_equal 200, response.status

  end

  test "delete a post" do

    delete :destroy,
    :id => @postF.id

    assert_equal 204, response.status

  end
end
