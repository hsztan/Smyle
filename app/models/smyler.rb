class Smyler < ApplicationRecord
  has_many :reviews
  has_many :meetings
  has_many :smylers, through: :meetings
  has_secure_password
end
