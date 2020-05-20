class MovieMailer < ApplicationMailer
  def new_movie_email
    @movie = params[:movie]
    mail(
      to: "marla@example.com",
      from: "movieapp@example.com",
      subject: "New movie created: #{@movie.title}"
    )
  end
end
