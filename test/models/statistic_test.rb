require 'test_helper'

class StatisticTest < ActiveSupport::TestCase
  test "statistic" do
    statistic = statistics(:allan_statistic)
    assert statistic.valid?, "statistic not valid"
  end
end
