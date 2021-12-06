class User < ApplicationRecord
before_save { self.email = email.downcase }

  validates :username, presence: true,
                      uniqueness: true,
                      length: { minimum:3, maximum: 25 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PHONE_REGEX = /\d[0-9]\)*\z/

  validates :email, presence: true,
                  uniqueness: { case_sensitive: false },
                  length: { maximum: 105 },
                  format: { with: VALID_EMAIL_REGEX }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  validates :birthday, presence: true
  validates :phone, presence: true, length: { is: 9 }, format: { with: VALID_PHONE_REGEX }
  
end