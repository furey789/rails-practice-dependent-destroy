class Patient < ActiveRecord::Base

  has_many :prescriptions, dependent: :destroy
  has_many :medications, through: :prescriptions

  validates_presence_of :first_name, :last_name

  def full_name
    "#{first_name} #{last_name}"
  end

end
