class Language < ApplicationRecord
  has_many :from_courses, class_name: 'Course', foreign_key: 'from_language_id', dependent: :destroy
  has_many :to_courses, class_name: 'Course', foreign_key: 'to_language_id', dependent: :destroy
  has_many :user_languages, dependent: :destroy
  has_many :users, through: :user_languages

  validates :name, presence: true
  # validates :skill, numericality: { only_integer: true }
end