class Review < ApplicationRecord
  belongs_to :renter, class_name: 'User', foreign_key: 'renter_id'
  belongs_to :celeb, class_name: 'User', foreign_key: 'celeb_id'

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: (0..5), allow_nil: false }, numericality: true
  validates :renter_id, presence: true
  validates :celeb_id, presence: true
end
