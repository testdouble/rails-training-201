class Movie < ApplicationRecord
  belongs_to :director
  validates_presence_of :title
  enum color_format: [:color, :black_and_white]
end
