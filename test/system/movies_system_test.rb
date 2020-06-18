require "application_system_test_case"

class MoviesSystemTest < ApplicationSystemTestCase
  test "visiting the show page" do
    movie = movies(:parasite)

    # visit "/movies/#{movie.id}"
    visit movie_path(movie)

    assert_text movie.title
    assert_text movie.director.name
  end

  test "visiting the index page" do
    parasite = movies(:parasite)
    titanic = movies(:titanic)

    # visit "/movies"
    visit movies_path

    assert_text parasite.title
    assert_text titanic.title
  end
end
