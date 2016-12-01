class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]

  ROLES = %w(Celebrity Lookalike Renter)

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  mount_uploader :profile_picture, PhotoUploader

  # has_many :renter_reviews, class_name: 'Review', foreign_key: 'renter_id'
  # has_many :celeb_reviews, class_name: 'Review', foreign_key: 'celeb_id'
   has_many :renter_bookings, class_name: 'Booking', foreign_key: 'renter_id'
  has_many :celeb_bookings, class_name: 'Booking', foreign_key: 'celeb_id'
  has_many :blocked_days
  has_many :languages, through: :user_languages
  has_many :user_specialities
  has_many :specialities, through: :user_specialities
  has_many :photos

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role, presence: true, inclusion: { in: ROLES }
  validates :city, presence: true
  validates :phone_number, presence: true
  validates :address, presence: true

  def self.find_for_facebook_oauth(auth)
    user_params = auth.to_h.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:facebook_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)

    user = User.where(provider: auth.provider, uid: auth.uid).first
    user ||= User.where(email: auth.info.email).first # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end

    return user
  end
end


