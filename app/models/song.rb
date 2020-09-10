class Song < ApplicationRecord
  validates :title, presence: true && :year, uniqueness: true
<<<<<<< HEAD
  validates :release_year, presence: true, numericality: { less_than_or_equal_to: Date.today.year },
    if: :released?
=======
  validates :release_year, presence: true,
    if: :released?
  validates :release_year, inclusion: { in: Date.today.year }
>>>>>>> fd63f8f1b0c163b2cb40e0d04b5c415049d6f0d7
end
