class Course < ApplicationRecord
  belongs_to :user

  belongs_to :from_language, class_name: 'Language', foreign_key: 'from_language_id'
  belongs_to :to_language, class_name: 'Language', foreign_key: 'to_language_id'

  validates :name, :lesson, presence: true
  validates :from_language_id, :to_language_id, presence: true
end
