class Booking < ApplicationRecord
  belongs_to :renter, class_name: 'User', foreign_key: 'renter_id'
  belongs_to :celeb, class_name: 'User', foreign_key: 'celeb_id'

  validates :renter_id, presence: true
  validates :celeb_id, presence: true
  validates :price, presence: true
  validates :status, presence: true
  validates :date, presence: true
  validates :content, presence: true
end
