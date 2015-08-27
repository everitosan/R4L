require 'test_helper'

class PostCategoryTest < ActiveSupport::TestCase
  test "post category" do
    post_category = post_categories(:health)
    assert post_category.valid?, "post category invalid"
  end
end
