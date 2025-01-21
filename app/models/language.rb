class Language < ApplicationRecord
  has_many :from_courses, class_name: 'Course', foreign_key: 'from_language_id'
  has_many :to_courses, class_name: 'Course', foreign_key: 'to_language_id'

  validates :name, presence: true
  validates :skill, numericality: { only_integer: true }
end
