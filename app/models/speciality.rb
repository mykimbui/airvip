class Speciality < ApplicationRecord

  SPECIALITIES = %w(Actor Singer Cook Dancer Writer Entertainer President TA)
  has_many :users, through: :user_specialities, inclusion: { in: SPECIALITIES }
  has_many :user_specialities
  validates :name, presence: true
end
