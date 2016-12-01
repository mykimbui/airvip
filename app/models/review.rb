class Review < ApplicationRecord
  belongs_to :renter, class_name: 'User', foreign_key: 'renter_id', optional: true
  belongs_to :celeb, class_name: 'User', foreign_key: 'celeb_id', optional: true
  belongs_to :booking

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: (0..5), allow_nil: false }, numericality: true
  validates :renter_id, presence: true, if: Proc.new{|c| c.celeb_id.blank?}
  validates :celeb_id, presence: true, if: Proc.new{|c| c.renter_id.blank?}
end
