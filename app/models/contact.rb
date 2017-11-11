class Contact < ApplicationRecord
  belongs_to :user

  validates_presence_of :name, :address, :email, :phone

  EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  PHONE_REGEX = /\A\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*\z/

  validates_format_of :email, with: EMAIL_REGEX 

  validates_format_of :phone, with: PHONE_REGEX
  
end
