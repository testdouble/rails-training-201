require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  test "movie is not valid without a title" do
    movie = Movie.new

    refute movie.valid?
  end
end
