class Review < ApplicationRecord
  belongs_to :user
  validates :rating, presence: true
  belongs_to :exploration
end
