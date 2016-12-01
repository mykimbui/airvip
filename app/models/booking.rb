class Booking < ApplicationRecord
  belongs_to :renter, class_name: 'User', foreign_key: 'renter_id', optional: true
  belongs_to :celeb, class_name: 'User', foreign_key: 'celeb_id', optional: true

  has_many :reviews
  # validates :renter_id, presence: true
  # validates :celeb_id, presence: true
  # validates :price, presence: true
  # validates :status, presence: true
  validates :date, presence: true
  validates :content, presence: true

  def accept!
    self.status = "Accepted"
  end

  def decline!
    self.status = "Declined"
  end

  def cancel!
    self.status = "Cancelled"
  end

  def completed!
    self.status = "Completed"
  end
end
