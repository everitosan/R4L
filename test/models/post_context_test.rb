require 'test_helper'

class PostContextTest < ActiveSupport::TestCase
  test "validates post context is valid" do
    pt = post_contexts(:profile)
    assert pt.valid?
  end
end
