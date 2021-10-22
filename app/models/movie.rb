class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, uniquiness: true
end
