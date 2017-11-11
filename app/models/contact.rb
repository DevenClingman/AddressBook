class Contact < ApplicationRecord
  belongs_to :user

  validates_presence_of :name, :address, :email, :phone

  EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  PHONE_REGEX = /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]?\d{4}\z/

  validates_format_of :email, with: EMAIL_REGEX 

  validates_format_of :phone, with: PHONE_REGEX
  validates :phone, length: { is: 10 }
end
