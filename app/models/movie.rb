class Movie < ActiveRecord::Base
  has_many :bookmarks
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true
end
