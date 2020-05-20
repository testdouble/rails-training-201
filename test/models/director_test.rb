require 'test_helper'

class DirectorTest < ActiveSupport::TestCase
  test "director has a name and age" do
    director = create(:director)
    assert_equal 0, director.movies.count

    movie = create_list(:movie, 3, director: director)
    assert_equal 3, director.movies.count
  end
end
