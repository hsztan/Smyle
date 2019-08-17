class Hearo < ApplicationRecord
  has_many :reviews
  has_many :bookings
  belongs_to :status
  has_many :meetings
  belongs_to :gender
  belongs_to :specialty
  has_many :smylers, through: :meetings
  has_secure_password

  validates :username, uniqueness: true
  validates :email, uniqueness: true

  def specialty_attributes=(attributes)
    self.specialty = Specialty.find_or_create_by(name: attributes[:name])
  end

  def full_name
    if self.middle_name
      self.first_name + ' ' + self.middle_name + ' ' + self.last_name
    else
      self.first_name + ' ' + self.last_name
    end
  end

  def self.online
    self.all.select {|h| h.status.name == 'Online'}
  end

  def self.specialty_order
    self.all.sort_by {|hearo| hearo.specialty.id}
  end
end
