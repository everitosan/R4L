require 'test_helper'

class UserControllerTest < ActionController::TestCase

  setup do
    @controller = API::UsersController.new
    @request.headers["Accept"] = "application/json"
    @user = users(:Allan)
  end

  test "creates a new user" do
    params = {user:
               { name: "allan",
                 age: 20,
                 email: "alan@yahoo.com",
                 address: "somwhere",
                 zipCode: 14000,
                 country: "MX",
                 telephone: "5540128869"}
               }

    post :create,
         params

    assert_equal 201, response.status
  end

  test "get a user" do
    get :show,
    :id => @user.id

    assert_equal 200, response.status

  end

  test "update a user" do
    put :update,
    :id => @user.id,
    :user => {:name => "Luis"}

    assert_equal 200, response.status
    assert_equal "Luis", @user.reload.name
  end

  test "delete a user" do
    delete :destroy,
    :id=> @user.id

    assert_equal 204, response.status
  end
end
