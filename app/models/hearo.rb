class Hearo < ApplicationRecord
  has_many :reviews
  has_many :bookings
  belongs_to :status
  has_many :meetings
  belongs_to :gender
  belongs_to :specialty
  #accepts_nested_attributes_for :specialty
  has_many :smylers, through: :meetings
  has_secure_password

  def specialty_attributes=(attributes)
    self.specialty = Specialty.find_or_create_by(name: attributes[:name])
  end

  def self.online
    self.all.select {|h| h.status.name == 'Online'}
  end

  def self.specialty_order
    self.all.sort_by {|hearo| hearo.specialty.id}
  end
end
