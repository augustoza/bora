class Activity < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :initial_date, presence: true
  validates :final_date, presence: true
  validates :location, presence: true
end
