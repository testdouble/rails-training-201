class AddDirectorIdToMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :director, :string
    add_reference :movies, :director, foreign_key: true
  end
end
