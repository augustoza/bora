class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom
  validates :content, presence: true
  validates :content, length: { minimum: 1 }
end
