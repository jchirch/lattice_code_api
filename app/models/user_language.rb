class UserLanguage < ApplicationRecord
  belongs_to :user
  belongs_to :language

  validates :skill_level, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
