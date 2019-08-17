class Gender < ApplicationRecord
  has_many :smylers
  has_many :hearos

  validates :name, uniqueness: true
end
