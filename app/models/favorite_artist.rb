class FavoriteArtist < ApplicationRecord
  belongs_to :user
  belongs_to :artist 
  validates :artist_id, presence: true, uniqueness: { scope: :user_id, message: "This Artist is already in your favorites" }
end
