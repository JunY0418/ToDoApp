class Board < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  has_one_attached :eyecatch
end