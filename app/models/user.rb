class User < ApplicationRecord
  has_secure_password
  has_many :comments

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
end
