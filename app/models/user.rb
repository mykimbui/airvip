class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :profile_picture, PhotoUploader

  has_many :renter_reviews, class_name: 'Review', foreign_key: 'renter_id'
  has_many :celeb_reviews, class_name: 'Review', foreign_key: 'celeb_id'
  has_many :renter_bookings, class_name: 'Booking', foreign_key: 'renter_id'
  has_many :celeb_bookings, class_name: 'Booking', foreign_key: 'celeb_id'
  has_many :blocked_days
  has_many :languages, through: :user_languages
  has_many :user_specialities
  has_many :specialities, through: :user_specialities
  has_many :photos

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role, presence: true
  validates :city, presence: true
  validates :profile_picture, presence: true
  validates :phone_number, presence: true
  validates :address, presence: true
end
