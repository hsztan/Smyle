class Hearo < ApplicationRecord
  has_many :reviews
  has_many :meetings
  belongs_to :gender
  has_many :smylers, through: :meetings
  has_secure_password
end
