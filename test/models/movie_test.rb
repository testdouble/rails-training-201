require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  test "movie is not valid without a title" do
    director = create(:director)
    movie = build(:movie, title: "", director: director)

    refute movie.valid?
  end
end
