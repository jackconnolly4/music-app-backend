class Collection < ApplicationRecord
  belongs_to :user
  belongs_to :album
  validates :album_id, presence: true, uniqueness: true
end
