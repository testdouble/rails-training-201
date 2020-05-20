class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :facebook_likes
      t.string :year
      t.string :plot_keywords
      t.string :director

      t.timestamps
    end
  end
end
