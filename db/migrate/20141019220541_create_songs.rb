class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title, :composer, :arranger, :mp3_url
      t.integer :number_of_parts

      t.timestamps
    end
  end
end
