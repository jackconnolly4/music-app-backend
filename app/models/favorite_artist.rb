class FavoriteArtist < ApplicationRecord
  belongs_to :user
  belongs_to :artist 
  validates :artist_id, presence: true, uniqueness: true
end
