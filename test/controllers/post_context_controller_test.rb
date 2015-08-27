require 'test_helper'

class PostContextControllerTest < ActionController::TestCase
  setup do
    @controller = API::PostContextsController.new
    @request.headers["Accept"] = "application/json"
    @post_context = post_contexts(:profile)
  end

  test "create a new post_context" do
    param = {post_context: {
      name: "postcontext2"
      }}

    post :create,
    param

    assert_equal 201, response.status
  end

  test "get post context of fixture" do
    get :show,
    :id => @post_context.id

    assert_equal 200, response.status
    assert_equal @post_context.name, @post_context.reload.name
  end

  test "update post context" do

    put :update,
    :id => @post_context.id,
    :post_context => { :name => 'otro'}

    assert_equal 200, response.status
    assert_equal 'otro', @post_context.reload.name
  end

  test "delete a post_context" do
    delete :destroy,
    :id => @post_context.id

    assert_equal 204, response.status
  end
end
