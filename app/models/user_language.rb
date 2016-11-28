class UserLanguage < ApplicationRecord
  belongs_to :users
  belongs_to :languages
end
