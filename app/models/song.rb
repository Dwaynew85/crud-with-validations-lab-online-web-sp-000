class Song < ApplicationRecord
  validates :title, presence: true && :year, uniqueness: true
  validates :release_year, presence: true, numericality: { less_than_or_equal_to: Date.today.year },
    if: :released?
  validates :release_year, presence: true,
    if: :released?
  validates :release_year, inclusion: { in: Date.today.year }
end
