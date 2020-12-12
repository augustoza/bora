class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_one_attached :photo
  has_many :reviews
  has_many :explorations
  has_many :explored_activities, source: :activity, through: :explorations
  has_many :activities
  has_many :received_reviews, class_name: "Review", foreign_key: "reviewed_user_id"
  include Countries
  devise :omniauthable, omniauth_providers: [:facebook]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  GENRES = %w[male female other]
  validates :full_name, presence: true
  validates :genre, presence: true, inclusion: { in: GENRES }
  validates :country, presence: true, inclusion: { in: LIST_OF_COUNTRIES }
  validates :username, presence: true, uniqueness: true, length: { minimum: 3 }

  def self.find_for_facebook_oauth(auth)
    user_params = auth.slice("provider", "uid")
    user_params.merge! auth.info.slice("email", "first_name", "last_name")
    user_params[:facebook_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
    user_params = user_params.to_h

    user = User.find_by(provider: auth.provider, uid: auth.uid)
    user ||= User.find_by(email: auth.info.email) # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end

    return user
  end

  def country_code
    COUNTRIES.key(country.capitalize).to_s
  end
end
