class User < ApplicationRecord
  before_save email.downcase!
  validates :name,
    presence: true,
    length: {maximum: Settings.MAXIMUM_NAME_LENGTH}
  validates :email,
    presence: true,
    length: {maximum: Settings.MAXIMUM_EMAIL_LENGTH},
    format: {with: Settings.VALID_EMAIL_REGEX},
    uniqueness: {case_sensitive: false}

  has_secure_password
  validates :password,
    presence: true, 
    length: {minimum: MINIMUM_PW_LENGTH}
end
