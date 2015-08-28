require 'test_helper'

class PersonalProjectsControllerTest < ActionController::TestCase
  setup do
    @controller = API::PersonalProjectsController.new
    @request.headers["Accept"] = "application/json"
    @user = users(:Gabo)
    @project = personal_projects(:allan_project)
  end

  test "gets all projects" do
    get :index

    assert_equal Mime::JSON, response.content_type
    assert_equal 200, response.status

  end

  test "create a project" do
    param = {
      personal_project: {
        user_id: @user.id,
        name: "casas para todos",
        socialProblem: "casas",
        impact: "highigh",
        description: "ya lo dije...",
        image: "come arround"
      }
    }

    post :create,
    param

    assert_equal Mime::JSON, response.content_type
    assert_equal 201, response.status
  end

  test "get a project" do
    get :show,
    :id => @project.id

    statisticResponse = json(response.body)
    assert_equal 200, response.status
    assert_equal @project.name, statisticResponse[:name]
    assert_equal Mime::JSON, response.content_type
  end

  test "update a project" do
    put :update,
    :id => @project.id,
    :personal_project => {:name => "The places I should no been" }

    assert_equal 200, response.status
    assert_equal "The places I should no been", @project.reload.name
  end

  test "delete a project" do
    delete :destroy,
    :id => @project.id

    assert_equal 204, response.status
  end
end
