class Hearo < ApplicationRecord
  has_many :reviews
  has_many :bookings
  has_many :meetings
  belongs_to :gender
  belongs_to :specialty
  accepts_nested_attributes_for :specialty
  has_many :smylers, through: :meetings
  has_secure_password
end
