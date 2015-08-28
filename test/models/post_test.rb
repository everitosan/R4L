require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "post" do
    post = posts(:Gabo_post)
    assert post.valid?, "posts is not valid"
  end
end
