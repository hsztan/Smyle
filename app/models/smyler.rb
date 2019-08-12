class Smyler < ApplicationRecord
  has_many :reviews
  has_many :meetings
  has_many :hearos, through: :meetings
  has_one :gender
  has_secure_password
end
