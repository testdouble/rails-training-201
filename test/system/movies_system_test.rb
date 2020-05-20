require "application_system_test_case"

class MoviesSystemTest < ApplicationSystemTestCase
  test "visiting the show page" do
    movie = create(:movie)

    # visit "/movies/#{movie.id}"
    visit movie_path(movie)

    assert_text movie.title
    assert_text movie.director.name
  end

  test "visiting the index page" do
    movie1 = create(:movie)
    movie2 = create(:movie)

    # visit "/movies"
    visit movies_path

    assert_text movie1.title
    assert_text movie2.title
  end
end
