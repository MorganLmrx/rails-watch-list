class Movie < ApplicationRecord
  has_many :lists, through: :bookmarks
  validates :title, uniqueness: true
  validates :title, :overview, presence: true
  has_many :bookmarks, dependent: :destroy
end
