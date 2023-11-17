class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, length: { minimum: 6 }, allow_blank: true
  validates :movie, presence: true
  validates :list, presence: true
  validates_uniqueness_of :movie_id, scope: :list_id
end
