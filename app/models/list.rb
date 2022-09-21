class List < ApplicationRecord
  validates :name, presence: true, uniqueness: true, allow_blank: false
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
end
