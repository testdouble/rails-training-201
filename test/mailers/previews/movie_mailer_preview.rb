# Preview all emails at http://localhost:3000/rails/mailers/movie_mailer
class MovieMailerPreview < ActionMailer::Preview
  def new_movie_email
    MovieMailer.with(movie: Movie.all.sample).new_movie_email
  end
end
