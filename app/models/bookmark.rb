class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list }
  validates :list_id, uniqueness: { scope: :movie }
end