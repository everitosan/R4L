require 'test_helper'

class PersonalProjectTest < ActiveSupport::TestCase
  test "project" do
    personal_project = personal_projects(:allan_project)
    assert personal_project.valid?, "personal_project not valid"
  end
end
