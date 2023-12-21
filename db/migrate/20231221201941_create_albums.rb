class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :artist_id
      t.string :image_url
      t.text :description
      t.string :year
      t.string :genre

      t.timestamps
    end
  end
end
