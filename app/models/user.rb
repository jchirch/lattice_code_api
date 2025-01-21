class User < ApplicationRecord
  has_many :courses
  validates :firstname, :lastname, :email, presence: true
end
