class AddStatusToFavoriteArtists < ActiveRecord::Migration[7.0]
  def change
    add_column :favorite_artists, :status, :string
  end
end
