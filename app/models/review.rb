class Review < ApplicationRecord
  belongs_to :user
  belongs_to :exploration
  validates :rating, presence: true
end
