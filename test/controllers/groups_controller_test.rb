require 'test_helper'

class GroupsControllerTest < ActionController::TestCase
  setup do
    @controller = API::GroupsController.new
    @request.headers["Accept"] = "application/json"

    @user = users(:Allan)
    @group = groups(:cyclists)
  end

  test "get all events" do
    get :index

    assert_equal Mime::JSON, response.content_type
    assert 200, response.status
  end

  test "create a new group" do
    params = {
      group: {
        user_id: @user.id,
        name: "Es mi grupo",
        description: "some description here"
      }
    }

    post :create,
          params

    responseServer = json(response.body)
    assert_equal 201, response.status
    assert_equal Mime::JSON, response.content_type
    assert_equal "Es mi grupo", responseServer[:name]

  end

  test "get a event" do
    get :show,
    :id => @group.id

    responseServer = json(response.body)
    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type
    assert_equal @group.name, responseServer[:name]
  end

  test "update a event" do

    put :update,
    :id => @group.id,
    :group => { :description => 'nocierto'}

    assert_equal 'nocierto', @group.reload.description
    assert_equal 200, response.status

  end

  test "delete a event" do

    delete :destroy,
    :id => @group.id

    assert_equal 204, response.status

  end
end
