class Smyler < ApplicationRecord
  has_many :reviews
  has_many :meetings
  has_many :hearos, through: :meetings
  has_one :gender
  has_secure_password

  validates :username, uniqueness: true
  validates :email, uniqueness: true
end
