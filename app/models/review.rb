class Review < ApplicationRecord
  belongs_to :user
  belongs_to :reviewed_user, class_name: "User"
  validates :rating, presence: true
  validates :reviewed_user, uniqueness: {scope: :user,message:"sorry you already reviewed this user"} 
end
