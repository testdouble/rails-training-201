require 'test_helper'

class MovieMailerTest < ActionMailer::TestCase
  test "the new movie email tells us about a newly released movie" do
    movie = create(:movie)
    email = MovieMailer.with(movie: movie).new_movie_email

    assert_emails 1 do
      email.deliver_now
      # email.deliver_later
    end

    assert_equal ["marla@example.com"], email.to
    assert_equal ["movieapp@example.com"], email.from
    assert_match /#{movie.title}/, email.subject
    assert_match /#{movie.title}/, email.body.to_s
    assert_match /#{movie.director.name}/, email.body.to_s
  end
end
