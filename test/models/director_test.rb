require 'test_helper'

class DirectorTest < ActiveSupport::TestCase
  test "director has associated movies" do
    bong_joon_ho = directors(:bong_joon_ho)
    assert_equal 1, bong_joon_ho.movies.count
  end
end
