class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include Countries
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  GENRES = %w(male female other)
  validates :full_name, presence: true
  validates :genre, presence: true, inclusion: { in: GENRES }
  validates :country, presence: true, inclusion: { in: COUNTRIES }
  validates :username, presence: true, uniqueness: true, length: { minimum: 3 }
end
