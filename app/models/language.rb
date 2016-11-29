class Language < ApplicationRecord
  LANGUAGES = %w(English French Chinese Dutch Italian Spanish Arabic)
  has_many :users, through: :user_languages
  has_many :user_languages

  validates :name, presence: true
end
