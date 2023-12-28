class Artist < ApplicationRecord
  has_many :albums

  has_many :favorite_artists
  has_many :users, through: :favorite_artists
end
