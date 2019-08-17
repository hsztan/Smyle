class Specialty < ApplicationRecord
  has_many :hearos

  validates :name, uniqueness: true
end
