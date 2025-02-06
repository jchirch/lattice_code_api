class User < ApplicationRecord
  has_secure_password

  has_many :courses, dependent: :destroy
  has_many :user_languages, dependent: :destroy
  has_many :languages, through: :user_languages

  validates :firstname, :lastname, :email, presence: true
  validates :email, uniqueness: true

  def generate_jwt
    JsonWebToken.encode(user_id: id)
  end
end
