class User < ApplicationRecord
has_secure_password
validates :email, presence: true, uniqueness: true

has_many :collections
has_many :albums, through: :collections 

has_many :favorite_artists
has_many :artists, through: :favorite_artists
end
