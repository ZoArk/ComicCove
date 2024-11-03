class Character < ApplicationRecord
  belongs_to :comic_series, optional: true
  validates :name, presence: true
  validates :alignment, presence: true
end
