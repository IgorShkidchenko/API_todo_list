class User < ApplicationRecord
  VALID_PASSWORD_LENGTH_RANGE = (6..20).freeze
  VALID_EMAIL_REGEX = /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/

  has_secure_password

  has_many :projects, dependent: :destroy

  validates :email,
            presence: true,
            format: { with: VALID_EMAIL_REGEX, message: I18n.t('user.errors.email') }

  validates :password,
            presence: true,
            length: { in: VALID_PASSWORD_LENGTH_RANGE }
end
