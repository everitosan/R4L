require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @controller = API::EventsController.new
    @request.headers["Accept"] = "application/json"

    @user = users(:Allan)
    @event = events(:first_party)
  end

  test "get all events" do
    get :index

    assert_equal Mime::JSON, response.content_type
    assert 200, response.status
  end

  test "create a new event" do
    params = {
      event: {
        user_id: @user.id,
        name: "Es mi evento",
        dateHour: DateTime.now,
        info: "es la fiestotota"
      }
    }

    post :create,
          params

    responseServer = json(response.body)
    assert_equal 201, response.status
    assert_equal Mime::JSON, response.content_type
    assert_equal "Es mi evento", responseServer[:name]

  end

  test "get a event" do
    get :show,
    :id => @event.id

    responseServer = json(response.body)
    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type
    assert_equal @event.name, responseServer[:name]
  end

  test "update a event" do

    put :update,
    :id => @event.id,
    :event => { :info => 'nocierto'}

    assert_equal 'nocierto', @event.reload.info
    assert_equal 200, response.status

  end

  test "delete a event" do

    delete :destroy,
    :id => @event.id

    assert_equal 204, response.status

  end
end
