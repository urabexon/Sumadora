class Contact < ApplicationRecord
  validates :name, length: { minimum: 3, maximum: 20 }
  validates :name_kana, length: { minimum: 3, maximum: 20 }
  validates :company, length: { in: 1..25 }, allow_blank: true
  validates :department, length: { in: 1..25 }, allow_blank: true

  # email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  # email_end

  validates :phone_number, allow_blank: true, numericality: { only_integer: true }, length: { in: 10..11 }
  validates :body, length: { minimum: 10 }
  validates_acceptance_of :agreement, allow_nil: false, on: :create
end
