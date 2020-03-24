class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :rating
      t.string :director
      t.string :summary
      t.integer :release_date
      t.string :image

      t.timestamps
    end
  end
end
