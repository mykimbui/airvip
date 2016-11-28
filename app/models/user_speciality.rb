class UserSpeciality < ApplicationRecord
  belongs_to :users
  belongs_to :speciality
end
