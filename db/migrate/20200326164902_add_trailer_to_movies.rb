class AddTrailerToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :trailer, :text
  end
end