class Collection < ApplicationRecord
  belongs_to :user
  belongs_to :album
  validates :album_id, presence: true, uniqueness: { scope: :user_id, message: "This album is already in your collection" }
end
