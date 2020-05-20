class MovieCleanupJob < ApplicationJob
  queue_as :default

  def perform(movie)
    #Do something
  end
end
